return {
	-- highlights the colors in the code
	-- https://github.com/NvChad/nvim-colorizer.lua
	"/NvChad/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			filetypes = {
				"css",
				"javascript",
				html = { names = false },
			},
			user_default_options = {
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				virtualtext = "■",
				always_update = false,
			},
			-- all the sub-options of filetypes apply to buftypes
			buftypes = {},
		})
	end,
}
