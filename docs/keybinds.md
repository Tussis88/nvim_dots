## ..In lavorazione..

# KEYBINDING

## Movimento

_Per muoversi all'interno di Neovim (i movimenti di base sono h j k l)_

|     |                                                          |
| :-: | :------------------------------------------------------- |
| `w` | inizio prossima parola                                   |
| `e` | fine prossima parola                                     |
| `b` | inizio parola precedente                                 |
| `W` | inizio prossimo gruppo di parole _ad esempio vim.keymap_ |
| `E` | fine prossimo gruppo di parole                           |
| `B` | inizio gruppo di parole precedenti                       |
| `M` | muove il cursore al centro dello schermo                 |

## Creazione e Movimento Finestre

_Comandi per creare finestre e muoversi al loro interno_

|              |                                                                     |
| :----------: | :------------------------------------------------------------------ |
| `<leader>ss` | divide la finestra orizzontalmente                                  |
| `<leader>sv` | divide la finestra verticalmente                                    |
| `<leader>so` | mantiene attiva una sola finestra _(le altre finiscono nel buffer)_ |
| `<leader>sh` | si sposta il cursore nella finestra di sinistra                     |
| `<leader>sl` | si sposta il cursore nella finestra di destra                       |
| `<leader>sj` | si sposta il cursore nella finestra di sotto                        |
| `<leader>sk` | si sposta il cursore nella finestra di sopra                        |

## Normal e Visual Mode

_Azioni di base_

|                            |                                                           |
| :------------------------: | :-------------------------------------------------------- |
|            `y`             | Copia selezione                                           |
|            `yy`            | Copia intera riga                                         |
|            `p`             | incolla                                                   |
|            `d`             | elimina                                                   |
|            `dd`            | elimina riga (e copia nella clipboard)                    |
|            `/`             | Cerca e evidenzia nel documento _funziona anche su Mason_ |
|            `n`             | passa alla prossima parola evidenziata                    |
|            `N`             | passa alla precedente parola evidenziata                  |
|        `<leader>cl`        | elimina l'evidenziatura                                   |
| `J` e `K` _solo in v mode_ | sposta il testo selezionato in su e in giù                |
|    `ctrl-d` e `ctrl-u`     | ci si muove velocemente all'interno del documento         |
|          `ctrl-c`          | apre e chiude il terminale                                |

## Commenti

_commenta e decommenta le righe o il testo_

|                        |                                |
| :--------------------: | :----------------------------- |
| `gcc` _in normal mode_ | commenta la riga               |
| `gbc` _in normal mode_ | commenta il blocco             |
| `gc` _in visual mode_  | commenta la selezione          |
| `gb` _in visual mode_  | commenta il blocco selezionato |

## NeoTree

_Esplora File e visualizzatore di buffer_

|                                  |                                            |
| :------------------------------: | :----------------------------------------- |
|          `<leader> nn`           | Apre e chiude neo tree                     |
|           `<leader>nb`           | Apre i buffer attivi                       |
|          `<backspace>`           | Naviga alla cartella superiore             |
|               `.`                | Setta cartella corrente come cartella root |
|               `H`                | Mostra file nascosti                       |
| `bd` _nella finestra dei buffer_ | cancella buffer                            |
|               `a`                | crea file o cartella                       |

## Telescope

_Fuzzy Finder_

|              |                                                       |
| :----------: | :---------------------------------------------------- |
| `<leader>ff` | trova file partendo dalla cartella in cui ci si trova |
| `<leader>fg` | live grep                                             |
| `<leader>fb` | buffers                                               |
| `<leader>fh` | help                                                  |

## Lsp

_comandi per lavorare con i server lsp_

|                     |                                      |
| :-----------------: | :----------------------------------- |
|         `K`         | mostra info sulla parola selezionata |
|        `gd`         | va alla definizione della funzione   |
|    `<leader>ca`     | code actions                         |
| `ctrl-k` e `ctrl-j` | seleziona tra i vari snippets        |
|       `<CR>`        | seleziona lo snippet                 |

## Esplora File

_L'esplora file di base di Neovim_

|                                      |                      |
| :----------------------------------: | :------------------- |
| `:Ex *<leader>pv` _(in normal mode)_ | apri l'esplora file  |
|                `<CR>`                | apri file o cartelle |
|                 `d`                  | crea cartella        |
|                 `%`                  | crea file            |

## Neorg

_Note, testi e altro_

|                   |                    |
| :---------------: | :----------------: |
|        `,`        |   leader locale    |
|   `<leader>ww`    | apre cartella note |
| `<localleader>nn` |     nuova nota     |
|       `za`        | comprimi un header |
