return {
	{
		-- Mason installa i server lsp
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- fa da ponte tra mason e lspconfig. qui si inseriscono i linguaggi che voglio installare di base
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "html", "cssls", "tsserver", "marksman" },
			})
		end,
	},
	{
		-- gestisce l'lsp vero e proprio. in remap.lua ho inserito tutti i keybinds
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({
				capabilities = capabilities,
				settings = {
					python = {
						analysys = {
							autoSearchPaths = true,
						},
					},
				},
			})
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
		end,
	},
}
