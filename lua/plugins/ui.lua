return {
    {
        -- tema tokio-dark https://github.com/folke/tokyonight.nvim
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "dusk",
                transparent = true,
                styles = {
                    functions = { bold = true },
                    floats = "transparent",
                    sidebars = "transparent",
                },
                dim_inactive = true,
            })
            vim.cmd([[colorscheme tokyonight]])
        end,
    },

    {
        -- lualine      https://github.com/nvim-lualine/lualine.nvim
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    -- theme = "solarized_dark",
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
}
