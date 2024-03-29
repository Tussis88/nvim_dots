return {
    {
        "vhyrro/luarocks.nvim",
        priority = 1000, -- We'd like this plugin to load first out of the rest
        config = true, -- This automatically runs `require("luarocks-nvim").setup()`
    },
    -- Orgmode per neovim
    -- https://github.com/nvim-neorg/neorg?tab=readme-ov-file
    {
        "nvim-neorg/neorg",
        dependencies = {
            "luarocks.nvim",
            "nvim-lua/plenary.nvim",
        },
        lazy = false,
        ft = "norg",
        cmd = "Neorg",
        -- tag = "*",
        config = function()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.highlights"] = {
                        config = {
                            highlights = {
                                headings = {
                                    --     ["1"] = { title = "+markdownH1", prefix = "+markdownH1Delimiter" },
                                    --     ["2"] = { title = "+markdownH2", prefix = "+markdownH2Delimiter" },
                                    --     ["3"] = { title = "+markdownH3", prefix = "+markdownH3Delimiter" },
                                    --     ["4"] = { title = "+markdownH4", prefix = "+markdownH4Delimiter" },
                                    --     ["5"] = { title = "+markdownH5", prefix = "+markdownH5Delimiter" },
                                    --     ["6"] = { title = "+markdownH6", prefix = "+markdownH6Delimiter" },
                                    --     -- riferimenti a rose-pine https://github.com/rose-pine/neovim/blob/c52167563e6aa44b5fa6fe007faa2bcac71050f0/lua/rose-pine.lua#L570C3-L581C48
                                },
                            },
                        },
                    },
                    ["core.concealer"] = {
                        config = {
                            icon_preset = "diamond",
                            -- riordina i diamani dal più grande al più piccolo
                            icons = {
                                code_block = { conceal = true },
                                heading = { icons = { "❖", "◆", "◈", "◇", "⟡", "⋄" } },
                            },
                        },
                    },
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/documents/notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                    -- chiude l`indice degli header una volta selezionato uno
                    ["core.qol.toc"] = {
                        config = { close_after_use = true },
                    },
                    -- setta automaticamente i metadati per i file .neorg che non li hanno
                    ["core.esupports.metagen"] = {
                        config = { type = "auto" },
                    },
                    -- definisce la strategia per generare l'indice 
                    -- "by_path" -> in base alla struttura delle cartelle
                    -- "default -> in base alle categorie dei metadati
                    ["core.summary"] = {
                        config = { strategy = "default"},
                    },
                },
            })
        end,
    },
}
