# Main keybindings for Neovim

## Movement

_The main keys for moving around a document_

|        key         | description                                 |
| :----------------: | :------------------------------------------ |
| `h`, `j`, `k`, `l` | main keys for basic movement                |
|        `w`         | beginning of next word                      |
|        `e`         | end of next word                            |
|        `b`         | beginning of previous word                  |
|        `W`         | beginning of next word.group                |
|        `E`         | end of next word.group                      |
|        `B`         | beginning of previous word.group            |
|        `M`         | move the cursor in the center of the screen |
|    `C-d`, `C-u`    | move down and up half a page                |

## Creation and movement between windows

_Commands for creating new windows and navigating through them_

|     key      | description                                                         |
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

|            key             | description                                               |
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

|          key           | description                    |
| :--------------------: | :----------------------------- |
| `gcc` _in normal mode_ | commenta la riga               |
| `gbc` _in normal mode_ | commenta il blocco             |
| `gc` _in visual mode_  | commenta la selezione          |
| `gb` _in visual mode_  | commenta il blocco selezionato |

## NeoTree

_Esplora File e visualizzatore di buffer_

|               key                | description                                |
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

|     key      | description                                           |
| :----------: | :---------------------------------------------------- |
| `<leader>ff` | trova file partendo dalla cartella in cui ci si trova |
| `<leader>fg` | live grep                                             |
| `<leader>fb` | buffers                                               |
| `<leader>fh` | help                                                  |

## Lsp and Diagnostics

_comandi per lavorare con i server lsp_

|         key         | description                                        |
| :-----------------: | :------------------------------------------------- |
|         `K`         | mostra info sulla parola selezionata               |
|        `gd`         | va alla definizione della funzione                 |
|    `<leader>ca`     | code actions                                       |
| `ctrl-k` e `ctrl-j` | seleziona tra i vari snippets                      |
|       `<CR>`        | seleziona lo snippet                               |
|    `<leader>ds˜`    | show diagnostics of current line in a float window |

## Esplora File

_L'esplora file di base di Neovim_

|                 key                  | description          |
| :----------------------------------: | :------------------- |
| `:Ex *<leader>pv` _(in normal mode)_ | apri l'esplora file  |
|                `<CR>`                | apri file o cartelle |
|                 `d`                  | crea cartella        |
|                 `%`                  | crea file            |

## Useful stuff

_Some useful functions that i use_

|                 key                  | description                                          |
| :----------------------------------: | :--------------------------------------------------- |
| `:%s/search_this/replace_with_this/` | search for a string and replace it one time per line |
| `%s/search_this/replace_with_this/g` | search for a string and replace it everywhere        |
