require'nvim-treesitter.configs'.setup {
  -- A list of proper names, or "all"
  ensure_installed = { "c", "cpp", "lua", "rust", "vim", "python", "java", "javascript", "html", "css" },

  --Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
