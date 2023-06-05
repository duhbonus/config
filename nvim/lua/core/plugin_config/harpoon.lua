local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

vim.keymap.set('n', "<leader>a",function () mark.add_file() end)
vim.keymap.set('n', "<C-e>", function () ui.toggle_quick_menu() end)

vim.keymap.set('n', "<leader>n", function () ui.nav_next() end)
vim.keymap.set('n', "<leader>p", function () ui.nav_prev() end)

vim.keymap.set("n", "<C-h>", function () ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function () ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function () ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function () ui.nav_file(4) end)
