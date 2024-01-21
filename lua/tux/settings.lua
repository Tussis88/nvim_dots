-- SETTAGGI DI BASE
vim.cmd("language en_US.UTF-8")            -- setta la lingua in inglese
vim.opt.fillchars = { eob = " " }          -- elimina la ~ dalle righe vuote
vim.opt.termguicolors = true               -- setta i colori in maniera corretta per iterm2
vim.cmd("set relativenumber")              -- mostra il numero relativo delle righe
vim.api.nvim_set_hl(0, "StatusLineNC", {}) -- disattiva status line originale

-- COMPORTAMENTO TAB
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")     -- setta il TAB a 4 spazi
vim.cmd("set softtabstop=4") -- setta l'indent automatico a 4
vim.cmd("set shiftwidth=4")  -- setta lo spostamento del testo premento > o < in normal mode

-- CURSORE
vim.opt.cursorline = true -- evidenzia la riga del cursore
