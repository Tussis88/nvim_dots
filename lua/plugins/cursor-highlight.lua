return {
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
}
