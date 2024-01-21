return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = {'lua', 'python', 'javascript', 'html', 'css'},
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}

-- highlighting e indenting di base 
-- https://github.com/nvim-treesitter/nvim-treesitter
