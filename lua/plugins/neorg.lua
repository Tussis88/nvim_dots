return {
	-- Orgmode per neovim
	-- https://github.com/nvim-neorg/neorg?tab=readme-ov-file
	{
		"nvim-neorg/neorg",
		dependencies = { "nvim-lua/plenary.nvim" },
		build = ":Neorg sync-parsers",
		lazy = true,
		ft = "norg",
		cmd = "Neorg",
		-- tag = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.highlights"] = {
						config = {
							highlights = {
								headings = {
									["1"] = { title = { link = "markdownH1" }, prefix = { link = "markdownH1Delimiter" } },
									["2"] = { title = { link = "markdownH2" }, prefix = { link = "markdownH2Delimiter" } },
									["3"] = { title = { link = "markdownH3" }, prefix = { link = "markdownH3Delimiter" } },
									["4"] = { title = { link = "markdownH4" }, prefix = { link = "markdownH4Delimiter" } },
									["5"] = { title = { link = "markdownH5" }, prefix = { link = "markdownH5Delimiter" } },
									["6"] = { title = { link = "markdownH6" }, prefix = { link = "markdownH6Delimiter" } },
								},
							},
						},
					},
					["core.concealer"] = { config = { icon_preset = "diamond" } }, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/documents/notes",
							},
						},
					},
				},
			})
		end,
	},
}
