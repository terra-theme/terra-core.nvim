local extend = require("terra-core.actions").highlights.extend_highlight
local cond_highlight = require("terra-core.actions").highlights.cond_highlight

---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local bg = colors.semantics.bg
        local fg = colors.semantics.fg
        local no_color = colors.none
        local palette = colors.palette

        ---@type TerraHighlights
        local highlights_map = {
            Normal = {
                fg = fg.primary.main,
                bg = cond_highlight(bg.primary.main, {
                    [config.transparent] = no_color,
                }),
            },
            NormalNC = {
                fg = fg.primary.dark,
                bg = cond_highlight(bg.primary.main, {
                    [config.dim_inactive_panes] = bg.primary.dark,
                    [config.transparent] = no_color,
                }),
            },
            NormalFloat = { link = "Normal" },
            EndOfBuffer = {
                fg = cond_highlight(bg.primary.main, {
                    [config.ending_tildes] = fg.neutral,
                }),
                bg = cond_highlight(bg.primary.main, {
                    [config.dim_inactive_panes] = no_color,
                    [config.transparent] = no_color,
                }),
            },
            SignColumn = { fg = fg.neutral },
            FoldColumn = { fg = fg.neutral },
            Folded = {
                fg = fg.neutral,
                bg = config.transparent and no_color or bg.primary.main,
            },
            Terminal = {
                fg = fg.primary.main,
                bg = cond_highlight(bg.primary.dark, {
                    [config.transparent] = no_color,
                }),
            },
            StatusLine = { fg = fg.primary.main, bg = bg.primary.dark },
            StatusLineTerm = { fg = fg.primary.main, bg = bg.primary.dark },
            StatusLineNC = { fg = palette.gray, bg = bg.primary.dark },
            StatusLineTermNC = { fg = palette.gray, bg = bg.primary.dark },
            ToolbarLine = { fg = fg.primary.main },
            WinBar = { link = "Normal" },
            WinBarNC = { link = "NormalNC" },
            Cursor = { reverse = true },
            vCursor = { reverse = true },
            iCursor = { reverse = true },
            lCursor = { reverse = true },
            CursorIM = { reverse = true },
            CursorColumn = { bg = bg.primary.light },
            CursorLine = { bg = bg.primary.dark },
            ColorColumn = { bg = bg.primary.dark },
            CursorLineNr = { fg = palette.yellow },
            LineNr = { fg = fg.neutral },
            Conceal = { fg = palette.gray, bg = bg.primary.main },
            DiffAdd = { fg = fg.diff.add },
            DiffChange = { fg = fg.diff.change },
            DiffDelete = { fg = fg.diff.delete },
            DiffText = { fg = fg.diff.text },
            DiffAdded = { fg = palette.green },
            DiffRemoved = { fg = palette.red },
            DiffFile = { fg = palette.cyan },
            DiffIndexLine = { fg = palette.gray },
            Directory = { fg = palette.blue },
            ErrorMsg = extend({ fg = palette.red }, config.code_style.messages),
            WarningMsg = extend({ fg = palette.yellow }, config.code_style.messages),
            MoreMsg = extend({ fg = palette.blue }, config.code_style.messages),
            ModeMsg = extend({ fg = fg.primary.main }, config.code_style.messages),
            IncSearch = { link = "Search" },
            Search = { bg = bg.match.active },
            Substitute = { fg = bg.primary.dark, bg = palette.green },
            MatchParen = { fg = no_color, bg = palette.gray },
            NonText = { fg = palette.gray },
            Whitespace = { fg = palette.gray },
            SpecialKey = { fg = palette.gray },
            Pmenu = { fg = fg.primary.main, bg = bg.primary.dark },
            PmenuSbar = { fg = no_color, bg = bg.primary.dark },
            PmenuSel = { fg = bg.primary.dark, bg = palette.blue },
            WildMenu = { fg = bg.primary.dark, bg = palette.blue },
            PmenuThumb = { fg = no_color, bg = palette.gray },
            Question = { fg = palette.yellow },
            SpellBad = { fg = palette.red, sp = palette.red },
            SpellCap = { fg = palette.yellow, sp = palette.yellow },
            SpellLocal = { fg = palette.blue, sp = palette.blue },
            SpellRare = { fg = palette.magenta, sp = palette.magenta },
            TabLine = { fg = fg.primary.main, bg = bg.primary.main },
            TabLineFill = { fg = palette.gray, bg = bg.primary.main },
            TabLineSel = { fg = fg.primary.main, bg = bg.primary.light },
            VertSplit = {
                fg = fg.neutral,
                bg = cond_highlight(bg.primary.main, {
                    [config.dim_inactive_panes] = bg.primary.dark,
                    [config.transparent] = no_color,
                }),
            },
            Visual = { bg = bg.match.active },
            VisualNOS = { link = "Visual" },
            QuickFixLine = { fg = palette.blue, bg = bg.primary.light },
            Debug = { fg = palette.yellow },
            debugPC = { fg = bg.primary.dark, bg = palette.green },
            debugBreakpoint = { fg = bg.primary.dark, bg = palette.red },
            ToolbarButton = { fg = bg.primary.dark, bg = palette.blue },
            FloatBorder = {
                fg = fg.neutral,
                bg = cond_highlight(bg.primary.main, {
                    [config.transparent] = no_color,
                }),
            },
            NvimFloat = { fg = fg.primary.main, bg = bg.primary.main },
        }

        return highlights_map
    end,
}

return highlight_map_extension