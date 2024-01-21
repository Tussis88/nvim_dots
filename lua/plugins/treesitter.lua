return {
    -- highlighting e indenting di base
    -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
