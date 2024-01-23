## ..In lavorazione..

# KEYBINDING

## Movimento
*Per muoversi all'interno di Neovim (i movimenti di base sono h j k l)*
|||
|:---:|:---:|
|w|inizio prossima parola|
|e|fine prossima parola|
|b|inizio parola precedente|
|W|inizio prossimo gruppo di parole *ad esempio vim.keymap*|
|E|fine prossimo gruppo di parole|
|B|inizio gruppo di parole precedenti|
|M|muove il cursore al centro dello schermo|

## Creazione e Movimento Finestre
|||
|:---:|:---:|
|<leader>ss|divide la finestra orizzontalmente|
|<leader>sv|divide la finestra verticalmente|
|<leader>so|mantiene attiva una sola finestra *(le altre finiscono nel buffer)*|
|<leader>sh|si sposta il cursore nella finestra di sinistra|
|<leader>sl|si sposta il cursore nella finestra di destra|
|<leader>sj|si sposta il cursore nella finestra di sotto|
|<leader>sk|si sposta il cursore nella finestra di sopra|

## Normal e Visual Mode
*Azioni di base*
|||
|:---:|:---:|
|y|Copia selezione|
|yy|Copia intera riga|
|p|incolla|
|d| elimina|
|dd|elimina riga (e copia nella clipboard)|
|/|Cerca e evidenzia nel documento *funziona anche su Mason*|
|n|passa alla prossima parola evidenziata|
|N|passa alla precedente parola evidenziata|
|:let @/=""  *<leader>cl*|elimina l'evidenziatura|
|J e K *solo in v mode*|sposta il testo selezionato in su e in giù|
|ctrl-d e ctrl-u|ci si muove velocemente all'interno del documento|
|ctrl-c|apre e chiude il terminale|

## Commenti
*commenta e decommenta le righe o il testo*
|||
|:---:|:---:|
|gcc *in normal mode*|commenta la riga|
|gbc *in normal mode*|commenta il blocco|
|gc *in visual mode*|commenta la selezione|
|gb *in visual mode*|commenta il blocco selezionato|

## NeoTree
*Esplora File e visualizzatore di buffer*
|||
|:---:|:---:|
|<leader> nn|Apre e chiude neo tree|
|<leader>nb|Apre i buffer attivi|
|<backspace>|Naviga alla cartella superiore|
|.|Setta cartella corrente come cartella root|
|H|Mostra file nascosti|
|bd *nella finestra dei buffer*|cancella buffer|
|a|crea file o cartella|

## Telescope
*Fuzzy Finder*
|||
|:---:|:---:|
|<leader>ff|trova file partendo dalla cartella in cui ci si trova|
|<leader>fg|live grep|
|<leader>fb|buffers|
|<leader>fh|help|

## Lsp
*comandi per lavorare con i server lsp*
|||
|:---:|:---:|
|K|mostra info sulla parola selezionata|
|gd|va alla definizione della funzione|
|<leader>ca|code actions|
|ctrl-k e ctrl-j| seleziona tra i vari snippets|
|<CR>|seleziona lo snippet|

## Esplora File
*L'esplora file di base di Neovim*
|||
|:---:|:---:|
|:Ex *<leader> pv* (in normal mode)|apri l'esplora file|
|Enter|apri file o cartelle|
|d|crea cartella|
|%|crea file|
