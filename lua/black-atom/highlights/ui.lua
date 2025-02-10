---@return BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local bg = require("black-atom.lib.bg")
        local ext_hl = require("black-atom.lib.highlights").ext_hl

        local ui = colors.ui
        local palette = colors.palette

        ---@type BlackAtom.Highlights
        local highlights_map = {
            -- Basic Text
            Normal = { fg = ui.fg.primary.main, bg = bg.main(config, colors) },
            NormalNC = { fg = ui.fg.primary.main, bg = bg.main(config, colors) },
            EndOfBuffer = ext_hl({ fg = ui.bg.primary.main }, { [config.styles.ending_tildes] = ui.fg.neutral }),
            NonText = { fg = ui.fg.neutral },
            Whitespace = { link = "NonText" },
            SpecialKey = { link = "NonText" },

            -- Floating Windows
            NormalFloat = { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
            FloatBorder = { fg = ui.fg.active, bg = ui.bg.primary.dark },
            FloatTitle = { fg = ui.fg.active, bg = ui.bg.primary.dark },

            -- Cursor & Matching
            Cursor = { fg = ui.fg.invert, bg = ui.fg.active },
            CursorIM = { link = "Cursor" },
            lCursor = { link = "Cursor" },
            TermCursor = { link = "Cursor" },
            TermCursorNC = { link = "Cursor" },

            CursorLine = { bg = ui.bg.active },
            CursorColumn = { bg = ui.bg.active },

            -- Search
            Search = { bg = ui.bg.match.passive },
            IncSearch = { bg = ui.bg.match.passive },
            CurSearch = { fg = ui.fg.invert, bg = ui.fg.active, bold = true },
            Substitute = { fg = ui.fg.invert, bg = ui.fg.active, bold = true },
            MatchParen = { bg = ui.bg.match.passive },

            Visual = { bg = ui.bg.match.passive },
            VisualNOS = { link = "Visual" },

            -- Line Numbering
            LineNr = { fg = ui.fg.neutral },
            CursorLineNr = { fg = ui.fg.active, bg = ui.bg.active },

            -- Diff
            DiffAdd = { fg = ui.fg.invert, bg = ui.bg.diff.add },
            DiffChange = { fg = ui.fg.diff.change },
            DiffDelete = { fg = ui.fg.diff.delete },
            DiffText = { fg = ui.fg.diff.text },

            -- Spell Checking
            SpellBad = { fg = ui.feedback.error, sp = palette.red, undercurl = true },
            SpellCap = { fg = ui.feedback.warn, sp = palette.yellow, undercurl = true },
            SpellLocal = { fg = ui.feedback.info, sp = palette.blue, undercurl = true },
            SpellRare = { fg = ui.feedback.error, sp = palette.magenta, undercurl = true },

            -- Popup Menu
            Pmenu = { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
            PmenuSel = { bg = ui.bg.primary.light },
            PmenuSbar = { fg = colors.none, bg = ui.bg.primary.dark },
            PmenuThumb = { fg = colors.none, bg = ui.bg.active },

            -- Messages & Mode
            Error = { fg = palette.red },
            ErrorMsg = ext_hl({ fg = palette.red }, config.styles.syntax.messages),
            MoreMsg = ext_hl({ fg = palette.blue }, config.styles.syntax.messages),
            ModeMsg = ext_hl({ fg = ui.fg.primary.main }, config.styles.syntax.messages),
            WarningMsg = ext_hl({ fg = palette.yellow }, config.styles.syntax.messages),

            -- Window & Tab Management
            Title = { fg = ui.fg.active },
            StatusLine = ext_hl(
                { fg = ui.fg.primary.main, bg = ui.bg.primary.dark },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),
            StatusLineNC = ext_hl(
                { fg = ui.fg.neutral, bg = ui.bg.primary.dark },
                { [config.styles.transparency == "full"] = { bg = colors.none } }
            ),
            TabLine = { fg = ui.fg.neutral, bg = ui.bg.primary.main },
            TabLineFill = { bg = ui.bg.primary.main },
            TabLineSel = { fg = ui.fg.primary.main, bg = ui.bg.primary.light },

            WinBar = { link = "StatusLine" },
            WinBarNC = { link = "StatusLineNC" },
            WinSeparator = { fg = bg.dark(config, colors), bg = bg.main(config, colors) },

            -- Folds & Columns
            Folded = { fg = ui.fg.neutral, bg = ui.bg.primary.dark },
            FoldColumn = { fg = ui.fg.neutral },
            SignColumn = { fg = ui.fg.neutral },
            ColorColumn = { bg = ui.bg.primary.dark },

            -- Others
            Directory = { fg = ui.fg.primary.main, bold = true },
            Conceal = { fg = ui.fg.neutral },
            QuickFixLine = { fg = ui.fg.active, bg = ui.bg.primary.light },
        }

        return highlights_map
    end,
}
