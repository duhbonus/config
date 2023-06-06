vim.g.mapleader = " "

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.api.nvim_set_keymap("n", "n", "nzz", { silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { silent = true })

vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { silent = true })

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>P", "\"_dP")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>o", "o<ESC>")
vim.keymap.set("n", "<leader>O", "O<ESC>")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
