-- Settaggi per Norg
vim.opt_local.wrap = true


--keybinds per Norg
local key = vim.keymap
key.set("n", "<leader>wc", ":Neorg return<CR>", {}) -- chiude tutti i buffer di neorg
key.set("n", "<leader>wn", ":Neorg toc<CR>", {})    -- attiva la table of content laterale


