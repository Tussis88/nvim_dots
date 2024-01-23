return {
	-- file explorer laterale
	-- https://github.com/nvim-treesitter/nvim-treesitter
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				-- questa impostazione rende sempre visibili i file nascosti, altrimenti bisognere usare il tasto H
				filtered_items = {
					visible = true,
				},
			},
			close_if_last_window = true,
		})
	end,
}
