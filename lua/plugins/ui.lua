return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                functionStyle = { bold = true },
                transparent = true,
                theme = "wave",
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none",
                            },
                        },
                    },
                },
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },

                        -- Save an hlgroup with dark background and dimmed foreground
                        -- so that you can use it where your still want darker windows.
                        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                        -- Popular plugins that open floats will link to NormalFloat by default;
                        -- set their background accordingly if you wish to keep them dark and borderless
                        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                    }
                end,
            })

            vim.cmd([[colorscheme kanagawa]])
        end,
    },
    {
        -- lualine      https://github.com/nvim-lualine/lualine.nvim
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "iceberg_dark", --"rose-pine-alt" per la versione con colori invertiti
                    disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
                    -- component_separators = { left = '', right = '' },
                    component_separators = { left = "|", right = "|" },
                    -- section_separators = { left = '', right = '' },
                    section_separators = { left = "", right = "" },
                },
                sections = {
                    lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
                },
            })
        end,
    },
    {
        -- https://github.com/yamatsum/nvim-cursorline
        -- sottolinea le parole uguali a quella sopra cui si trova il cursore
        "yamatsum/nvim-cursorline",
        config = function()
            require("nvim-cursorline").setup({
                cursorline = {
                    enable = false,
                },
                cursorword = {
                    enable = true,
                    min_lenght = 3,
                    hl = { underline = true },
                },
            })
        end,
    },
    {
        -- colora la indent-line in base alla funzione parente
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        config = function()
            local scope = "focus"
            -- local indent = "passive"
            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                vim.api.nvim_set_hl(0, "focus", { fg = "#917fb3" })
                -- vim.api.nvim_set_hl(0, "passive", { fg = "#2b2b2b" })
            end)
            require("ibl").setup({
                scope = {
                    highlight = scope,
                    show_start = false,
                    show_end = false,
                },
                indent = {
                    -- highlight = indent,
                    smart_indent_cap = true,
                },
            })
        end,
    },
}

-- ROSE PINE
-- {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("rose-pine").setup({
--             variant = "moon",
--             disable_background = false,
--             styles = {
--                 transparency = true,
--             },
--         })
--         vim.cmd([[colorscheme rose-pine]])
--         -- colori per italico e grassetto in neorg e markdown
--         vim.api.nvim_set_hl(0, "@markup.italic", { italic = true, fg = "#ea9d34" })
--         vim.api.nvim_set_hl(0, "@markup.strong", { bold = true, fg = "#d7827e" })
--     end,
-- },

-- SOLARIZED OSAKA
-- {
--     -- tema solarized osaka https://github.com/craftzdog/solarized-osaka.nvim
--     "craftzdog/solarized-osaka.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("solarized-osaka").setup({
--             styles = {
--                 functions = { bold = true },
--                 floats = "transparent",
--                 sidebars = "transparent",
--             },
--             dim_inactive = true,
--         })
--         vim.cmd([[colorscheme solarized-osaka]])
--     end,
-- },

-- TOKIONIGHT
-- {
--     -- tema tokyonight https://github.com/folke/tokyonight.nvim
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("tokyonight").setup({
--             style = "dusk",
--             transparent = true,
--             styles = {
--                 functions = { bold = true },
--                 floats = "transparent",
--                 sidebars = "transparent",
--             },
--         })
--         vim.cmd([[colorscheme tokyonight]])
--         vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
--     end,
-- },
