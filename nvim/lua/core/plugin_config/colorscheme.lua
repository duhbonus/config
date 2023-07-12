vim.o.termguicolors = true
-- KANAGAWA
require('kanagawa').setup({
    ...,
    colors = {
        palette = {
            -- change colors directly
            -- https://github.com/rebelot/kanagawa.nvim/blob/master/lua/kanagawa/colors.lua
            dragonBlack3 = "#131313", -- background
            samuraiRed = "#c4746e",
            oldWhite = "#a1a1a1",
            sumiInk3 = "#131313",
        },
        theme = {
            -- change what colors the theme uses:
            -- https://github.com/rebelot/kanagawa.nvim/blob/master/lua/kanagawa/themes.lua
            wave = {
                ui = {
                    float = {
                        bg = "none",
                    },
                },
            },
            dragon = {
                syn = {
                    -- parameter = "yellow",
                },
            },
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    ...
})
vim.cmd("colorscheme kanagawa-dragon")

-- TOKYONIGHT
-- require("tokyonight").setup({
--     style = "night",
--         on_colors = function(colors)
--             colors.bg = "#131313"
--             colors.fg = "#C9C9C9"
--             colors.fg_dark = "#C9C9C9"
--         end,
--
--         on_highlights = function (hl)
--             hl.TelescopeBorder = {
--                 bg = "#16161e",
--                 fg = "#adadad"
--             }
--         end
--     })
--
-- vim.cmd('colorscheme tokyonight')
