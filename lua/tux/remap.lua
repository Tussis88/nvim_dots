local key = vim.keymap

-- KEYBINDS PER FUNZIONI BASE
vim.g.mapleader = " " -- barra spaziatrice come leader
key.set("n", "<leader>pv", vim.cmd.Ex) -- <leader>pv per aprire il file explorer di vim
key.set("n", "<leader>cl", ":let @/=''<CR>", {}) -- cancella gli highlight delle ricerche con /

-- MOVIMENTO
key.set("v", "J", ":m '>+1<CR>gv=gv") -- sposta in giù tutto il testo selezionato
key.set("v", "K", ":m '<-2<CR>gv=gv") -- sposta in su tutto il testo selezionato
key.set("n", "<C-d>", "<C-d>zz") -- ci si muove nel documento di mezza pagina alla volta. Il cursore rimane in centro
key.set("n", "<C-u>", "<C-u>zz") -- come sopra.

-- CREAZIONE E MOVIMENTO FINESTRE
key.set("n", "<leader>ss", ":split<CR>", {}) -- splitta orizzontalmente
key.set("n", "<leader>sv", ":vsplit<CR>", {}) -- splitta verticalmente
key.set("n", "<leader>so", ":only<CR>", {}) -- mantiene una sola finestra attiva (le altre rimangono nel buffer)
key.set("n", "<leader>sh", "<C-w>h", {}) -- muoviti nella finestra a sinistra
key.set("n", "<leader>sl", "<C-w>l", {}) -- muoviti nella finestra a destra
key.set("n", "<leader>sk", "<C-w>k", {}) -- muoviti nella finestra in alto
key.set("n", "<leader>sj", "<C-w>j", {}) -- muoviti nella finestra in basso

-- NEOTREE
key.set("n", "<leader>nn", ":Neotree filesystem reveal right toggle<CR>", {}) -- apre e chiude neotree sulla destra
key.set("n", "<leader>nb", ":Neotree focus buffers reveal float toggle<CR>", {}) -- apre una finestra con i buffer attivi
key.set("n", "<leader>nc", ":Neotree close<CR>", {}) -- chiude le finestre di neotree

-- LSP
key.set("n", "K", vim.lsp.buf.hover, {}) -- mostra info sulla parola selezionata
key.set("n", "gd", vim.lsp.buf.definition, {}) -- va le definizioni della funzione
key.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- code actions)

-- NONE-LS (Formatter)
key.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- chiama la funzione di formattazione

-- FTERM
key.set({ "n", "t" }, "<C-c>", function() -- apre e chiude il terminale
	require("FTerm").toggle()
end)

-- SNIPPETS
-- i keybinds si trovano in completions.lua

-- TELESCOPE
-- i keybinds si trovano in telescope.lua
