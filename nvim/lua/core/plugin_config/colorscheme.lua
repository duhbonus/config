vim.o.termguicolors = true

require("tokyonight").setup({
    style = "night",
        on_colors = function(colors)
            colors.bg = "#131313"
            colors.fg = "#C9C9C9"
            colors.fg_dark = "#C9C9C9"
        end
    })

vim.cmd('colorscheme tokyonight')
