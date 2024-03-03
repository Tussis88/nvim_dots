return {
    -- formatter. https://github.com/jose-elias-alvarez/null-ls.nvim
    -- Bisogna installare i formatters con Mason e poi inserirli manualmente qui.
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- lua || formatter
                null_ls.builtins.formatting.stylua,
                -- python || formatter
                null_ls.builtins.formatting.black,
                --python || linter
                null_ls.builtins.diagnostics.pylint.with({ extra_args = { "--max-line-length", "120" } }),
                -- javascript, css, markdown, html || formatter
                null_ls.builtins.formatting.prettier,
                -- javascript || linter
                -- null_ls.builtins.diagnostics.eslint,
                -- markdown || linter
                null_ls.builtins.diagnostics.alex,
            },
        })
    end,
}
