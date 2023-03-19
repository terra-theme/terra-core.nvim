local actions = require("terra.actions")

local extend = actions.highlights.extend_highlight

local M = {}

---Sets up Treesitter Highlights
---@param highlights TerraHighlightsMap
---@param colors TerraColors
---@param config TerraConfig
M.setup = function(highlights, colors, config)
    ---@type TerraHighlightGroup
    highlights.common = {
        Normal = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        Terminal = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.dark,
        },
        EndOfBuffer = {
            fg = config.ending_tildes and colors.semantics.bg.primary.light or colors.semantics.bg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        FoldColumn = {
            fg = colors.semantics.fg.neutral,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        Folded = {
            fg = colors.semantics.fg.neutral,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        SignColumn = {
            fg = colors.semantics.fg.primary.main,
            bg = config.transparent and colors.none or colors.semantics.bg.primary.main,
        },
        ToolbarLine = { fg = colors.semantics.fg.primary.main },
        Cursor = { reverse = true },
        vCursor = { reverse = true },
        iCursor = { reverse = true },
        lCursor = { reverse = true },
        CursorIM = { reverse = true },
        CursorColumn = { bg = colors.semantics.bg.primary.light },
        CursorLine = { bg = colors.semantics.bg.primary.dark },
        ColorColumn = { bg = colors.semantics.bg.primary.dark },
        CursorLineNr = { fg = colors.palette.yellow },
        LineNr = { fg = colors.semantics.fg.neutral },
        Conceal = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.main },
        DiffAdd = { fg = colors.semantics.fg.diff.add },
        DiffChange = { fg = colors.semantics.fg.diff.change },
        DiffDelete = { fg = colors.semantics.fg.diff.delete },
        DiffText = { fg = colors.semantics.fg.diff.text },
        DiffAdded = { fg = colors.palette.green },
        DiffRemoved = { fg = colors.palette.red },
        DiffFile = { fg = colors.palette.cyan },
        DiffIndexLine = { fg = colors.palette.gray },
        Directory = { fg = colors.palette.blue },
        ErrorMsg = extend({ fg = colors.palette.red }, config.code_style.messages),
        WarningMsg = extend({ fg = colors.palette.yellow }, config.code_style.messages),
        MoreMsg = extend({ fg = colors.palette.blue }, config.code_style.messages),
        ModeMsg = extend({}, config.code_style.messages),
        IncSearch = { link = "Search" },
        Search = { bg = colors.semantics.bg.active, bold = true },
        Substitute = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.green },
        MatchParen = { fg = colors.none, bg = colors.palette.gray },
        NonText = { fg = colors.palette.gray },
        Whitespace = { fg = colors.palette.gray },
        SpecialKey = { fg = colors.palette.gray },
        Pmenu = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        PmenuSbar = { fg = colors.none, bg = colors.semantics.bg.primary.dark },
        PmenuSel = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
        WildMenu = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
        PmenuThumb = { fg = colors.none, bg = colors.palette.gray },
        Question = { fg = colors.palette.yellow },
        SpellBad = { fg = colors.palette.red, sp = colors.palette.red },
        SpellCap = { fg = colors.palette.yellow, sp = colors.palette.yellow },
        SpellLocal = { fg = colors.palette.blue, sp = colors.palette.blue },
        SpellRare = { fg = colors.palette.magenta, sp = colors.palette.magenta },
        StatusLine = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        StatusLineTerm = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        StatusLineNC = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.dark },
        StatusLineTermNC = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.dark },
        TabLine = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.main },
        TabLineFill = { fg = colors.palette.gray, bg = colors.semantics.bg.primary.main },
        TabLineSel = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.light },
        VertSplit = { fg = colors.semantics.fg.neutral },
        Visual = { bg = colors.semantics.bg.active },
        VisualNOS = { bg = colors.semantics.bg.active },
        QuickFixLine = { fg = colors.palette.blue, bg = colors.semantics.bg.primary.light },
        Debug = { fg = colors.palette.yellow },
        debugPC = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.green },
        debugBreakpoint = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.red },
        ToolbarButton = { fg = colors.semantics.bg.primary.dark, bg = colors.palette.blue },
        FloatBorder = { fg = colors.semantics.fg.neutral, bg = colors.semantics.bg.primary.dark },
        NormalFloat = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        Float = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        NvimFloat = { fg = colors.semantics.fg.primary.main, bg = colors.semantics.bg.primary.dark },
        WinBar = { link = "StatusLine" },
        WinBarNC = { link = "StatusLineNC" },
    }
end

return M
