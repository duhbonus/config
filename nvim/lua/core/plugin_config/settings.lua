local set = vim.opt

set.guicursor = ""

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.smartindent = true

set.relativenumber = true

set.wrap = false

set.hlsearch = false
set.incsearch = true

set.scrolloff = 8

set.updatetime = 50

set.colorcolumn = "80"

vim.cmd("highlight ColorColumn guibg=#000000")

set.swapfile = false
set.backup = false
-- make sure to set permissions to read and write on dir
set.undodir = os.getenv("HOME") .. "/.nvim/undodir"
set.undofile = true


vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
