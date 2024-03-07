return {
	-- formatter. https://github.com/jose-elias-alvarez/null-ls.nvim
	-- Bisogna installare i formatters con Mason e poi inserirli manualmente qui.
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua || formatter
				null_ls.builtins.formatting.stylua,
				-- python || formatter
				null_ls.builtins.formatting.black,
				--python || linter
				require("none-ls.diagnostics.flake8").with({ extra_args = { "--max-line-length", "120" } }),
				-- javascript, css, markdown, html || formatter
				null_ls.builtins.formatting.prettier,
				-- javascript || linter
				-- require("none-ls.diagnostics.eslint_d"),     per far funzionare correttamente eslint devo creare un file di configurazione (o generico o per il singolo progetto)
				-- markdown || linter
				null_ls.builtins.diagnostics.alex,
			},
		})
	end,
}
