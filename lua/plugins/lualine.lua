function Mode_component()
	local main_icons = { "", "", "󰴈", "󰊠", "󰮯", "󱚝", "󰢚", "󰓥", "󰧻" }
	return main_icons[math.random(#main_icons)]
end

return {

    -- lualine      https://github.com/nvim-lualine/lualine.nvim
    "nvim-lualine/lualine.nvim",
    config = function()
        -- Eviline config for lualine
        -- Author: shadmansaleh
        -- Credit: glepnir
        local lualine = require("lualine")

        -- Color table for highlights
        -- stylua: ignore
        local colors = {
            bg       = '#2A2A37',
            fg       = '#DCD7BA',
            yellow   = '#ECBE7B',
            cyan     = '#7FB4CA',
            darkblue = '#2D4F67',
            green    = '#98BB6C',
            orange   = '#FF8800',
            violet   = '#957FB8',
            magenta  = '#D27E99',
            blue     = '#7E9CD8',
            red      = '#FF5D62',
        }

        local mode_component = Mode_component()

        local function vim_mode_colors()
            -- auto change color according to neovims mode
            local mode_color = {
                n = colors.red,
                i = colors.green,
                v = colors.blue,
                [""] = colors.blue,
                V = colors.blue,
                c = colors.magenta,
                no = colors.red,
                s = colors.orange,
                S = colors.orange,
                [""] = colors.orange,
                ic = colors.yellow,
                R = colors.violet,
                Rv = colors.violet,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ["r?"] = colors.cyan,
                ["!"] = colors.red,
                t = colors.red,
            }
            return { fg = mode_color[vim.fn.mode()] }
        end
        local conditions = {
            buffer_not_empty = function()
                return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
            end,
            hide_in_width = function()
                return vim.fn.winwidth(0) > 80
            end,
            check_git_workspace = function()
                local filepath = vim.fn.expand("%:p:h")
                local gitdir = vim.fn.finddir(".git", filepath .. ";")
                return gitdir and #gitdir > 0 and #gitdir < #filepath
            end,
        }

        -- Config
        local config = {
            options = {
                disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
                -- Disable sections and component separators
                component_separators = "",
                section_separators = "",
                theme = {
                    -- We are going to use lualine_c an lualine_x as left and
                    -- right section. Both are highlighted by c theme .  So we
                    -- are just setting default looks o statusline
                    normal = { c = { fg = colors.fg, bg = colors.bg } },
                    inactive = { c = { fg = colors.fg, bg = colors.bg } },
                },
            },
            sections = {
                -- these are to remove the defaults
                lualine_a = {},
                lualine_b = {},
                lualine_y = {},
                lualine_z = {},
                -- These will be filled later
                lualine_c = {},
                lualine_x = {},
            },
            inactive_sections = {
                -- these are to remove the defaults
                lualine_a = {},
                lualine_b = {},
                lualine_y = {},
                lualine_z = {},
                lualine_c = {},
                lualine_x = {},
            },
        }

        -- Inserts a component in lualine_c at left section
        local function ins_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        -- Inserts a component in lualine_x at right section
        local function ins_right(component)
            table.insert(config.sections.lualine_x, component)
        end

        ins_left({
            function()
                return "▊"
            end,
            color = vim_mode_colors,
            padding = { left = 0, right = 1 }, -- We don't need space before this
        })

        ins_left({
            -- mode component
            function()
                return mode_component
            end,
            -- return ""
            color = vim_mode_colors,
            padding = { right = 1 },
        })

        ins_left({
            -- filesize component
            "filesize",
            cond = conditions.buffer_not_empty,
        })

        ins_left({
            "filetype",
            cond = conditions.buffer_not_empty,
            icons_enabled = true,
            fmt = function()
                return " "
            end,
            color = { fg = colors.magenta },
            padding = { left = 1, right = 0 },
        })

        ins_left({
            "filename",
            cond = conditions.buffer_not_empty,
            color = { fg = colors.magenta, gui = "bold" },
            padding = { left = 0, right = 1 },
        })

        ins_left({ "location" })

        ins_left({ "progress", color = { fg = colors.fg, gui = "bold" } })

        ins_left({
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
                color_error = { fg = colors.red },
                color_warn = { fg = colors.yellow },
                color_info = { fg = colors.cyan },
            },
        })

        -- Insert mid section. You can make any number of sections in neovim :)
        -- for lualine it's any number greater then 2
        ins_left({
            function()
                return "%="
            end,
        })

        ins_left({
            -- Lsp server name .
            function()
                local msg = "No Active Lsp"
                local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end,
            icon = " LSP:",
            color = { fg = colors.fg, gui = "bold" },
        })

        -- Add components to right sections
        ins_right({
            "o:encoding", -- option component same as &encoding in viml
            fmt = string.upper, -- I'm not sure why it's upper case either ;)
            cond = conditions.hide_in_width,
            color = { fg = colors.green, gui = "bold" },
        })

        ins_right({
            "fileformat",
            symbols = { unix = "" },
            fmt = string.upper,
            icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
            color = { fg = colors.green, gui = "bold" },
        })

        ins_right({
            "branch",
            icon = "",
            color = { fg = colors.violet, gui = "bold" },
        })

        ins_right({
            "diff",
            -- Is it me or the symbol for modified us really weird
            symbols = { added = " ", modified = "󰝤 ", removed = " " },
            diff_color = {
                added = { fg = colors.green },
                modified = { fg = colors.orange },
                removed = { fg = colors.red },
            },
            cond = conditions.hide_in_width,
        })

        ins_right({
            function()
                return "▊"
            end,
            color = vim_mode_colors,
            padding = { left = 1 },
        })

        -- Now don't forget to initialize lualine
        lualine.setup(config)
    end,
}

-- vecchia config
-- config = function()
--     require("lualine").setup({
--         options = {
--             theme = "iceberg_dark", --"rose-pine-alt" per la versione con colori invertiti
--             disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
--             -- component_separators = { left = '', right = '' },
--             component_separators = { left = "|", right = "|" },
--             -- section_separators = { left = '', right = '' },
--             section_separators = { left = "", right = "" },
--         },
--         sections = {
--             lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
--         },
--     })
-- end,
--
