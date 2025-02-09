---@doc https://github.com/hrsh7th/nvim-cmp
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local p = colors.palette

        ---@type BlackAtom.Highlights
        local highlights_map = {
            CmpItemAbbr = { fg = colors.ui.fg.primary.main },
            CmpItemAbbrDeprecated = { fg = p.light_gray, strikethrough = true },
            CmpItemAbbrMatch = { fg = p.cyan },
            CmpItemAbbrMatchFuzzy = { fg = p.cyan, underline = true },
            CmpItemMenu = { fg = colors.ui.fg.primary.main },
            CmpItemKind = { fg = p.magenta },
        }

        local lsp_kind_icons_color = {
            Class = p.yellow,
            Color = p.green,
            Constant = p.dark_yellow,
            Constructor = p.blue,
            Default = p.magenta,
            Enum = p.magenta,
            EnumMember = p.yellow,
            Event = p.yellow,
            Field = p.magenta,
            File = p.blue,
            Folder = p.dark_yellow,
            Function = p.blue,
            Interface = p.cyan,
            Keyword = p.magenta,
            Method = p.yellow,
            Module = p.dark_yellow,
            Operator = p.magenta,
            Property = p.cyan,
            Reference = p.dark_yellow,
            Snippet = p.red,
            Struct = p.magenta,
            Text = p.light_gray,
            TypeParameter = p.red,
            Unit = p.green,
            Value = p.dark_yellow,
            Variable = p.magenta,
        }

        for kind, color in pairs(lsp_kind_icons_color) do
            if config.styles.cmp_kind_color_mode == "fg" then
                highlights_map["CmpItemKind" .. kind] = { fg = color }
            else
                highlights_map["CmpItemKind" .. kind] = { fg = colors.ui.fg.invert, bg = color }
            end
        end

        return highlights_map
    end,
}
