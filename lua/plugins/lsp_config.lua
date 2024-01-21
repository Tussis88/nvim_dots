return {
    {
        -- Mason installa i server lsp
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        -- fa da ponte tra mason e lspconfig. qui si inseriscono i linguaggi che voglio installare di base
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "html", "cssls", "tsserver" }
            })
        end
    },
    {
        -- gestisce l'lsp vero e proprio. in remap.lua ho inserito tutti i keybinds
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.html.setup({})
            lspconfig.cssls.setup({})
            lspconfig.tsserver.setup({})
        end
    }
}
