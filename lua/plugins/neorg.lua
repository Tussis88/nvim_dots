return {
    -- Orgmode per neovim
    -- https://github.com/nvim-neorg/neorg?tab=readme-ov-file
    {
        "nvim-neorg/neorg",
        dependencies = { "nvim-lua/plenary.nvim" },
        build = ":Neorg sync-parsers",
        lazy = true,
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
                            icons = { heading = { icons = { "❖", "◆", "◈", "◇", "⟡", "⋄" } } },
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
                },
            })
        end,
    },
}
