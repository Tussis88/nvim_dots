return {
    -- formatter. https://github.com/jose-elias-alvarez/null-ls.nvim
    -- Bisogna installare i formatters con Mason e poi inserirli manualmente qui.
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- lua
                null_ls.builtins.formatting.stylua,
                -- python
                null_ls.builtins.formatting.black,
                -- javascript, css, markdown, html
                null_ls.builtins.formatting.prettier,
            },
        })
    end,
}
