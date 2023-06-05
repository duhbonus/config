local colors = {
  fg = "#a1a1a1",
  bg = "#333333",
}

function GitBranch()
  local ok, _ = os.rename(vim.fn.getcwd() .. '/.git', vim.fn.getcwd() .. '/.git')
  if not ok then
    return ''
  end

  local fp = io.popen('git branch --show-current')
  if fp then
    local branch = fp:read('*a')
    fp:close()

    if branch then
      branch = string.gsub(branch, '\n', '')
      return [[ ]] .. branch
    end
  end

  return ''
end

function LSPStatus()
  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })

  if errors > 0 then
    return '  ' .. errors .. ' '
  elseif warnings > 0 then
    return '  ' .. warnings .. ' '
  else
    return ''
  end
end

function StatusLine()
  local status = ''

  -- left side
  status = status .. [[ %-{luaeval("GitBranch()")}]]
  status = status .. [[ %-F]]

  if vim.bo.modified then
      status = status .. ' [+]'
  end

  status = status .. [[ %{luaeval("LSPStatus()")}]]
  -- right side
  status = status .. [[ %= %y LN %l/%L]]

  return status
end

function UpdateStatusLine()
  vim.wo.statusline = '%!luaeval("StatusLine()")'
  vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.bg, fg = colors.fg })
end

UpdateStatusLine()

vim.cmd([[autocmd BufEnter * lua UpdateStatusLine()]])
