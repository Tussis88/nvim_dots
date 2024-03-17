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
                }
			})
            vim.cmd([[colorscheme rose-pine]])
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
