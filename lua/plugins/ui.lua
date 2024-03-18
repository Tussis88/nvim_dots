return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                disable_background = false,
                styles = {
                    transparency = true,
                },
            })
            vim.cmd([[colorscheme rose-pine]])
            -- colori per italico e grassetto in neorg e markdown
            vim.api.nvim_set_hl(0, "@markup.italic", { italic = true, fg = "#ea9d34" })
            vim.api.nvim_set_hl(0, "@markup.strong", { bold = true, fg = "#d7827e" })
        end,
    },
    {
        -- lualine      https://github.com/nvim-lualine/lualine.nvim
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "rose-pine-alt", --"rose-pine-alt" per la versione con colori invertiti
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
                vim.api.nvim_set_hl(0, "focus", { fg = "#8f79c1" })
                -- vim.api.nvim_set_hl(0, "passive", { fg = "#41425e" })
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
--
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
