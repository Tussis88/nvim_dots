-- KEYBINDS PER FUNZIONI BASE
vim.g.mapleader = " " -- barra spaziatrice come leader
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- <leader>pv per aprire il file explorer di vim
vim.keymap.set("n", "<leader>cl", ":let @/=''<CR>", {}) -- cancella gli highlight delle ricerche con /

-- MOVIMENTO
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- sposta in giù tutto il testo selezionato
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- sposta in su tutto il testo selezionato
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- ci si muove nel documento di mezza pagina alla volta. Il cursore rimane in centro
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- come sopra.

-- NEOTREE
vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal right toggle<CR>", {}) -- apre e chiude neotree sulla destra
vim.keymap.set("n", "<leader>nb", ":Neotree focus buffers reveal right toggle<CR>", {}) -- apre una finestra con i buffer attivi
vim.keymap.set("n", "<leader>nc", ":Neotree close<CR>", {}) -- chiude le finestre di neotree

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- mostra info sulla parola selezionata
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- va le definizioni della funzione
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- code actions)

-- NONE-LS (Formatter)
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- chiama la funzione di formattazione

-- SNIPPETS
-- i keybinds si trovano in completions.lua

-- TELESCOPE
-- i keybinds si trovano in telescope.lua
