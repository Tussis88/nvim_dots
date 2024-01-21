-- KEYBINDS PER FUNZIONI BASE
vim.g.mapleader = " "                         -- barra spaziatrice come leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- <leader>pv per aprire il file explorer di vim

-- NEOTREE
vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal right toggle<CR>", {})    -- apre e chiude neotree sulla destra
vim.keymap.set("n", "<leader>nb", ":Neotree focus buffers reveal right toggle<CR>", {}) -- apre una finestra con i buffer attivi
vim.keymap.set("n", "<leader>nc", ":Neotree close<CR>", {})                             -- chiude le finestre di neotree

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})                         -- mostra info sulla parola selezionata
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})                   -- va le definizioni della funzione
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- code actions)

-- NONE-LS (Formatter)
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- chiama la funzione di formattazione
