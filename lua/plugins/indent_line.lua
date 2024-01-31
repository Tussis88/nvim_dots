return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		local scope = "focus"
		-- local indent = "passive"
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "focus", { fg = "#268bd3" })
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
}
