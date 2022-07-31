local darken = require("terra.actions").color.darken

---@alias HighlightGroupName string

---@alias HighlightFormat  "bold" | "underline" | "underlineline" | "undercurl" | "underdot" | "underdash" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "nocombine" | "NONE"

---@class HighlightGroupSettings
---@field fg string
---@field bg string
---@field sp string
---@field fmt HighlightFormat

---@alias HighlightGroup table<HighlightGroupName, HighlightGroupSettings>

local function get_default_highlights(colors, config)
    ---@class Highlights
    local higlights = { langs = {}, plugins = {} }

    ---@type HighlightGroup
    higlights.common = {
        Normal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        Terminal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        EndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg2 or colors.semantic.bg1,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        FoldColumn = {
            fg = colors.palette.grey,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        Folded = {
            fg = colors.palette.grey,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        SignColumn = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        ToolbarLine = { fg = colors.semantic.fg },
        Cursor = { fmt = "reverse" },
        vCursor = { fmt = "reverse" },
        iCursor = { fmt = "reverse" },
        lCursor = { fmt = "reverse" },
        CursorIM = { fmt = "reverse" },
        CursorColumn = { bg = colors.semantic.bg1 },
        CursorLine = { bg = colors.semantic.bg2 },
        ColorColumn = { bg = colors.semantic.bg1 },
        CursorLineNr = { fg = colors.palette.yellow },
        LineNr = { fg = colors.palette.grey },
        Conceal = { fg = colors.palette.grey, bg = colors.semantic.bg1 },
        DiffAdd = { fg = colors.semantic.diff_add },
        DiffChange = { fg = colors.semantic.diff_change },
        DiffDelete = { fg = colors.semantic.diff_delete },
        DiffText = { fg = colors.semantic.diff_text },
        DiffAdded = { fg = colors.palette.green },
        DiffRemoved = { fg = colors.palette.red },
        DiffFile = { fg = colors.palette.cyan },
        DiffIndexLine = { fg = colors.palette.grey },
        Directory = { fg = colors.palette.blue },
        ErrorMsg = { fg = colors.palette.red, fmt = "bold" },
        WarningMsg = { fg = colors.palette.yellow, fmt = "bold" },
        MoreMsg = { fg = colors.palette.blue, fmt = "bold" },
        IncSearch = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        Search = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        Substitute = { fg = colors.semantic.bg0, bg = colors.palette.green },
        MatchParen = { fg = colors.none, bg = colors.palette.grey },
        NonText = { fg = colors.palette.grey },
        Whitespace = { fg = colors.palette.grey },
        SpecialKey = { fg = colors.palette.grey },
        Pmenu = { fg = colors.semantic.fg, bg = colors.semantic.bg0 },
        PmenuSbar = { fg = colors.none, bg = colors.semantic.bg0 },
        PmenuSel = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        WildMenu = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        PmenuThumb = { fg = colors.none, bg = colors.palette.grey },
        Question = { fg = colors.palette.yellow },
        SpellBad = { fg = colors.palette.red, sp = colors.palette.red },
        SpellCap = { fg = colors.palette.yellow, sp = colors.palette.yellow },
        SpellLocal = { fg = colors.palette.blue, sp = colors.palette.blue },
        SpellRare = { fg = colors.palette.purple, sp = colors.palette.purple },
        StatusLine = { fg = colors.semantic.fg, bg = colors.semantic.bg2 },
        StatusLineTerm = { fg = colors.semantic.fg, bg = colors.semantic.bg2 },
        StatusLineNC = { fg = colors.palette.grey, bg = colors.semantic.bg1 },
        StatusLineTermNC = { fg = colors.palette.grey, bg = colors.semantic.bg1 },
        TabLine = { fg = colors.semantic.fg, bg = colors.semantic.bg1 },
        TabLineFill = { fg = colors.palette.grey, bg = colors.semantic.bg1 },
        TabLineSel = { fg = colors.semantic.fg, bg = colors.semantic.bg3 },
        VertSplit = { fg = colors.palette.grey },
        Visual = { bg = colors.semantic.bg3 },
        VisualNOS = { fg = colors.none, bg = colors.semantic.bg2 },
        QuickFixLine = { fg = colors.palette.blue, bg = colors.semantic.bg2 },
        Debug = { fg = colors.palette.yellow },
        debugPC = { fg = colors.semantic.bg0, bg = colors.palette.green },
        debugBreakpoint = { fg = colors.semantic.bg0, bg = colors.palette.red },
        ToolbarButton = { fg = colors.semantic.bg0, bg = colors.palette.blue },
        FloatBorder = { fg = colors.palette.grey, bg = colors.semantic.bg1 },
        NormalFloat = { fg = colors.semantic.fg, bg = colors.semantic.bg1 },
    }

    ---@type HighlightGroup
    higlights.syntax = {
        String = { fg = colors.palette.cyan, fmt = config.code_style.strings },
        Character = { fg = colors.palette.yellow },
        Number = { fg = colors.palette.dark_yellow },
        Float = { fg = colors.palette.dark_yellow },
        Boolean = { fg = colors.palette.dark_yellow },
        Type = { fg = colors.palette.yellow },
        Structure = { fg = colors.palette.yellow },
        StorageClass = { fg = colors.palette.blue },
        Identifier = { fg = colors.palette.red, fmt = config.code_style.variables },
        Constant = { fg = colors.palette.dark_yellow },
        PreProc = { fg = colors.palette.purple },
        PreCondit = { fg = colors.palette.purple },
        Include = { fg = colors.palette.purple },
        Keyword = { fg = colors.palette.purple, fmt = config.code_style.keywords },
        Define = { fg = colors.palette.purple },
        Typedef = { fg = colors.palette.purple },
        Exception = { fg = colors.palette.purple },
        Conditional = {
            fg = colors.palette.purple,
            fmt = config.code_style.keywords,
        },
        Repeat = { fg = colors.palette.purple, fmt = config.code_style.keywords },
        Statement = { fg = colors.palette.purple },
        Macro = { fg = colors.palette.red },
        Error = { fg = colors.palette.purple },
        Label = { fg = colors.palette.purple },
        Special = { fg = colors.palette.red },
        SpecialChar = { fg = colors.palette.red },
        Function = { fg = colors.palette.yellow, fmt = config.code_style.functions },
        Operator = { fg = colors.palette.purple },
        Title = { fg = colors.palette.cyan },
        Tag = { fg = colors.palette.green },
        Delimiter = { fg = colors.palette.light_grey },
        Comment = { fg = colors.palette.grey, fmt = config.code_style.comments },
        SpecialComment = {
            fg = colors.palette.grey,
            fmt = config.code_style.comments,
        },
        Todo = { fg = colors.palette.red, fmt = config.code_style.comments },
    }

    ---@type HighlightGroup
    higlights.treesitter = {
        TSAnnotation = { fg = colors.semantic.fg },
        TSAttribute = { fg = colors.palette.cyan },
        TSBoolean = { fg = colors.palette.dark_yellow },
        TSCharacter = { fg = colors.palette.dark_yellow },
        TSComment = { fg = colors.palette.grey, fmt = config.code_style.comments },
        TSConditional = {
            fg = colors.palette.purple,
            fmt = config.code_style.keywords,
        },
        TSConstant = { fg = colors.palette.dark_yellow },
        TSConstBuiltin = { fg = colors.palette.dark_yellow },
        TSConstMacro = { fg = colors.palette.dark_yellow },
        TSConstructor = { fg = colors.palette.yellow, fmt = "bold" },
        TSError = { fg = colors.semantic.fg },
        TSException = { fg = colors.palette.purple },
        TSField = { fg = colors.palette.cyan },
        TSFloat = { fg = colors.palette.dark_yellow },
        TSFunction = {
            fg = colors.palette.yellow,
            fmt = config.code_style.functions,
        },
        TSFuncBuiltin = {
            fg = colors.palette.cyan,
            fmt = config.code_style.functions,
        },
        TSFuncMacro = {
            fg = colors.palette.cyan,
            fmt = config.code_style.functions,
        },
        TSInclude = { fg = colors.palette.purple },
        TSKeyword = { fg = colors.palette.red, fmt = config.code_style.keywords },
        TSKeywordFunction = {
            fg = colors.palette.purple,
            fmt = config.code_style.functions,
        },
        TSKeywordOperator = {
            fg = colors.palette.purple,
            fmt = config.code_style.keywords,
        },
        TSLabel = { fg = colors.palette.dark_yellow },
        TSMethod = { fg = colors.palette.blue },
        TSNamespace = { fg = colors.palette.yellow },
        TSNone = { fg = colors.semantic.fg },
        TSNumber = { fg = colors.palette.dark_yellow },
        TSOperator = { fg = colors.palette.white },
        TSParameter = { fg = colors.palette.blue },
        TSParameterReference = { fg = colors.semantic.fg },
        TSProperty = { fg = colors.palette.blue },
        TSPunctDelimiter = { fg = colors.palette.white },
        TSPunctBracket = { fg = colors.palette.white },
        TSPunctSpecial = { fg = colors.palette.red },
        TSRepeat = { fg = colors.palette.purple, fmt = config.code_style.keywords },
        TSString = { fg = colors.palette.cyan, fmt = config.code_style.strings },
        TSStringRegex = {
            fg = colors.palette.dark_yellow,
            fmt = config.code_style.strings,
        },
        TSStringEscape = {
            fg = colors.palette.red,
            fmt = config.code_style.strings,
        },
        TSSymbol = { fg = colors.palette.cyan },
        TSTag = { fg = colors.palette.yellow },
        TSTagDelimiter = { fg = colors.palette.dark_yellow },
        TSText = { fg = colors.semantic.fg },
        TSStrong = { fg = colors.semantic.fg, fmt = "bold" },
        TSEmphasis = { fg = colors.semantic.fg, fmt = "italic" },
        TSUnderline = { fg = colors.semantic.fg, fmt = "underline" },
        TSStrike = { fg = colors.semantic.fg, fmt = "strikethrough" },
        TSTitle = { fg = colors.palette.dark_yellow, fmt = "bold" },
        TSLiteral = { fg = colors.palette.green },
        TSURI = { fg = colors.palette.cyan, fmt = "underline" },
        TSMath = { fg = colors.semantic.fg },
        TSTextReference = { fg = colors.palette.blue },
        TSEnviroment = { fg = colors.semantic.fg },
        TSEnviromentName = { fg = colors.semantic.fg },
        TSNote = { fg = colors.semantic.fg },
        TSWarning = { fg = colors.semantic.fg },
        TSDanger = { fg = colors.semantic.fg },
        TSType = { fg = colors.palette.yellow },
        TSTypeBuiltin = { fg = colors.palette.yellow },
        TSVariable = {
            fg = colors.palette.dark_yellow,
            fmt = config.code_style.variables,
        },
        TSVariableBuiltin = {
            fg = colors.palette.red,
            fmt = config.code_style.variables,
        },
    }

    local diagnostics_error_color = config.diagnostics.darker
            and colors.palette.dark_red
        or colors.palette.red
    local diagnostics_hint_color = config.diagnostics.darker
            and colors.palette.dark_blue
        or colors.palette.blue
    local diagnostics_warn_color = config.diagnostics.darker
            and colors.palette.dark_yellow
        or colors.palette.yellow
    local diagnostics_info_color = config.diagnostics.darker
            and colors.palette.dark_cyan
        or colors.palette.cyan

    ---@type HighlightGroup
    higlights.plugins.lsp = {
        LspCxxHlGroupEnumConstant = { fg = colors.palette.dark_yellow },
        LspCxxHlGroupMemberVariable = { fg = colors.palette.dark_yellow },
        LspCxxHlGroupNamespace = { fg = colors.palette.blue },
        LspCxxHlSkippedRegion = { fg = colors.palette.grey },
        LspCxxHlSkippedRegionBeginEnd = { fg = colors.palette.red },

        DiagnosticError = { fg = colors.palette.red },
        DiagnosticHint = { fg = colors.palette.blue },
        DiagnosticInfo = { fg = colors.palette.cyan },
        DiagnosticWarn = { fg = colors.palette.yellow },

        DiagnosticVirtualTextError = {
            bg = config.diagnostics.background and darken(
                diagnostics_error_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_error_color,
        },
        DiagnosticVirtualTextWarn = {
            bg = config.diagnostics.background and darken(
                diagnostics_warn_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_warn_color,
        },
        DiagnosticVirtualTextInfo = {
            bg = config.diagnostics.background and darken(
                diagnostics_info_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_info_color,
        },
        DiagnosticVirtualTextHint = {
            bg = config.diagnostics.background and darken(
                diagnostics_hint_color,
                0.1,
                colors.semantic.bg1
            ) or colors.none,
            fg = diagnostics_hint_color,
        },

        DiagnosticUnderlineError = {
            fmt = config.diagnostics.undercurl and "undercurl" or "underline",
            sp = colors.palette.red,
        },
        DiagnosticUnderlineHint = {
            fmt = config.diagnostics.undercurl and "undercurl" or "underline",
            sp = colors.palette.blue,
        },
        DiagnosticUnderlineInfo = {
            fmt = config.diagnostics.undercurl and "undercurl" or "underline",
            sp = colors.palette.blue,
        },
        DiagnosticUnderlineWarn = {
            fmt = config.diagnostics.undercurl and "undercurl" or "underline",
            sp = colors.palette.yellow,
        },

        LspReferenceText = { bg = colors.semantic.bg2 },
        LspReferenceWrite = { bg = colors.semantic.bg2 },
        LspReferenceRead = { bg = colors.semantic.bg2 },

        LspCodeLens = { fg = colors.palette.grey, fmt = config.code_style.comments },
        LspCodeLensSeparator = { fg = colors.palette.grey },
    }

    higlights.plugins.lsp.LspDiagnosticsDefaultError =
        higlights.plugins.lsp.DiagnosticError
    higlights.plugins.lsp.LspDiagnosticsDefaultHint =
        higlights.plugins.lsp.DiagnosticHint
    higlights.plugins.lsp.LspDiagnosticsDefaultInformation =
        higlights.plugins.lsp.DiagnosticInfo
    higlights.plugins.lsp.LspDiagnosticsDefaultWarning =
        higlights.plugins.lsp.DiagnosticWarn
    higlights.plugins.lsp.LspDiagnosticsUnderlineError =
        higlights.plugins.lsp.DiagnosticUnderlineError
    higlights.plugins.lsp.LspDiagnosticsUnderlineHint =
        higlights.plugins.lsp.DiagnosticUnderlineHint
    higlights.plugins.lsp.LspDiagnosticsUnderlineInformation =
        higlights.plugins.lsp.DiagnosticUnderlineInfo
    higlights.plugins.lsp.LspDiagnosticsUnderlineWarning =
        higlights.plugins.lsp.DiagnosticUnderlineWarn
    higlights.plugins.lsp.LspDiagnosticsVirtualTextError =
        higlights.plugins.lsp.DiagnosticVirtualTextError
    higlights.plugins.lsp.LspDiagnosticsVirtualTextWarning =
        higlights.plugins.lsp.DiagnosticVirtualTextWarn
    higlights.plugins.lsp.LspDiagnosticsVirtualTextInformation =
        higlights.plugins.lsp.DiagnosticVirtualTextInfo
    higlights.plugins.lsp.LspDiagnosticsVirtualTextHint =
        higlights.plugins.lsp.DiagnosticVirtualTextHint

    ---@type HighlightGroup
    higlights.plugins.ale = {
        ALEErrorSign = higlights.plugins.lsp.DiagnosticError,
        ALEInfoSign = higlights.plugins.lsp.DiagnosticInfo,
        ALEWarningSign = higlights.plugins.lsp.DiagnosticWarn,
    }

    -- TODO: Optimize
    ---@type HighlightGroup
    higlights.plugins.barbar = {
        -- BufferLineFill = { bg = colors.semantic.bg0 },
        -- BufferLineBackground = { bg = colors.semantic.bg0 },
        -- BufferLineSeparator = { fg = colors.palette.red, bg = colors.palette.blue },
        -- BufferLineGroupSeparator = { bg = colors.semantic.bg0 },
        -- BufferLineSeparatorVisible = { fg = colors.semantic.bg0, bg = colors.semantic.bg0 },

        -- BufferCurrent = { fmt = "bold" },
        -- BufferCurrentMod = { fg = colors.palette.dark_yellow, bg = colors.semantic.bg1, fmt = "bold,italic" },
        -- BufferCurrentSign = { fg = colors.palette.yellow },
        -- BufferInactiveMod = { fg = colors.palette.light_grey, bg = colors.semantic.bg2, fmt = "italic" },
        -- BufferVisible = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleMod = { fg = colors.palette.yellow, bg = colors.semantic.bg1, fmt = "italic" },
        -- BufferVisibleIndex = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleSign = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferVisibleTarget = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferLineTabClose = { fg = colors.palette.light_grey, bg = colors.semantic.bg1 },
        -- BufferLineTabSelected = { fg = colors.palette.yellow, bg = colors.semantic.bg1 },
        --
        -- BufferLineBuffer = { fg = colors.gray, bg = colors.semantic.bg0 },
        --
        -- BufferLineTab = { fg = colors.palette.grey, bg = colors.semantic.bg0 },
    }

    ---@type HighlightGroup
    higlights.plugins.cmp = {
        CmpItemAbbr = { fg = colors.semantic.fg },
        CmpItemAbbrDeprecated = {
            fg = colors.palette.light_grey,
            fmt = "strikethrough",
        },
        CmpItemAbbrMatch = { fg = colors.palette.cyan },
        CmpItemAbbrMatchFuzzy = { fg = colors.palette.cyan, fmt = "underline" },
        CmpItemMenu = { fg = colors.palette.light_grey },
        CmpItemKind = {
            fg = colors.palette.purple,
            fmt = config.cmp_itemkind_reverse and "reverse",
        },
    }

    ---@type HighlightGroup
    higlights.plugins.coc = {
        CocErrorSign = higlights.plugins.lsp.DiagnosticError,
        CocHintSign = higlights.plugins.lsp.DiagnosticHint,
        CocInfoSign = higlights.plugins.lsp.DiagnosticInfo,
        CocWarningSign = higlights.plugins.lsp.DiagnosticWarn,
    }

    ---@type HighlightGroup
    higlights.plugins.whichkey = {
        WhichKey = { fg = colors.palette.red },
        WhichKeyDesc = { fg = colors.palette.blue },
        WhichKeyGroup = { fg = colors.palette.dark_yellow },
        WhichKeySeperator = { fg = colors.palette.green },
    }

    -- TODO: Solvable with a Link to ToggleTermNormal?
    ---@type HighlightGroup
    higlights.plugins.toggleterm = {
        ToggleTerm1FloatBorder = { fg = colors.palette.grey },
        ToggleTerm1NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm2FloatBorder = { fg = colors.palette.grey },
        ToggleTerm2NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm3FloatBorder = { fg = colors.palette.grey },
        ToggleTerm3NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm4FloatBorder = { fg = colors.palette.grey },
        ToggleTerm4NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm5FloatBorder = { fg = colors.palette.grey },
        ToggleTerm5NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm6FloatBorder = { fg = colors.palette.grey },
        ToggleTerm6NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm7FloatBorder = { fg = colors.palette.grey },
        ToggleTerm7NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm8FloatBorder = { fg = colors.palette.grey },
        ToggleTerm8NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
        ToggleTerm9FloatBorder = { fg = colors.palette.grey },
        ToggleTerm9NormalFloat = {
            fg = colors.semantic.fg,
            bg = colors.semantic.bg1,
        },
    }

    ---@type HighlightGroup
    higlights.plugins.gitgutter = {
        GitGutterAdd = { fg = colors.palette.green },
        GitGutterChange = { fg = colors.palette.blue },
        GitGutterDelete = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    higlights.plugins.hop = {
        HopNextKey = { fg = colors.palette.red, fmt = "bold" },
        HopNextKey1 = { fg = colors.palette.cyan, fmt = "bold" },
        HopNextKey2 = { fg = darken(colors.palette.blue, 0.7) },
        HopUnmatched = { fg = colors.palette.grey },
    }

    -- comment
    ---@type HighlightGroup
    higlights.plugins.diffview = {
        DiffviewFilePanelTitle = { fg = colors.palette.blue, fmt = "bold" },
        DiffviewFilePanelCounter = { fg = colors.palette.purple, fmt = "bold" },
        DiffviewFilePanelFileName = { fg = colors.semantic.fg },
        DiffviewNormal = higlights.common.Normal,
        DiffviewCursorLine = higlights.common.CursorLine,
        DiffviewVertSplit = higlights.common.VertSplit,
        DiffviewSignColumn = higlights.common.SignColumn,
        DiffviewStatusLine = higlights.common.StatusLine,
        DiffviewStatusLineNC = higlights.common.StatusLineNC,
        DiffviewEndOfBuffer = higlights.common.EndOfBuffer,
        DiffviewFilePanelRootPath = { fg = colors.palette.grey },
        DiffviewFilePanelPath = { fg = colors.palette.grey },
        DiffviewFilePanelInsertions = { fg = colors.palette.green },
        DiffviewFilePanelDeletions = { fg = colors.palette.red },
        DiffviewStatusAdded = { fg = colors.palette.green },
        DiffviewStatusUntracked = { fg = colors.palette.blue },
        DiffviewStatusModified = { fg = colors.palette.blue },
        DiffviewStatusRenamed = { fg = colors.palette.blue },
        DiffviewStatusCopied = { fg = colors.palette.blue },
        DiffviewStatusTypeChange = { fg = colors.palette.blue },
        DiffviewStatusUnmerged = { fg = colors.palette.blue },
        DiffviewStatusUnknown = { fg = colors.palette.red },
        DiffviewStatusDeleted = { fg = colors.palette.red },
        DiffviewStatusBroken = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    higlights.plugins.gitsigns = {
        GitSignsAdd = { fg = colors.palette.green },
        GitSignsAddLn = { fg = colors.palette.green },
        GitSignsAddNr = { fg = colors.palette.green },
        GitSignsChange = { fg = colors.palette.blue },
        GitSignsChangeLn = { fg = colors.palette.blue },
        GitSignsChangeNr = { fg = colors.palette.blue },
        GitSignsDelete = { fg = colors.palette.red },
        GitSignsDeleteLn = { fg = colors.palette.red },
        GitSignsDeleteNr = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    higlights.plugins.neotree = {
        NeoTreeNormal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NeoTreeNormalNC = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NeoTreeEndOfBuffer = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
    }

    ---@type HighlightGroup
    higlights.plugins.nvim_tree = {
        NvimTreeNormal = {
            fg = colors.semantic.fg,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NvimTreeVertSplit = {
            fg = colors.palette.grey,
            bg = config.transparent and colors.none or colors.semantic.bg1,
        },
        NvimTreeEndOfBuffer = {
            fg = config.ending_tildes and colors.semantic.bg2 or colors.semantic.bg1,
            bg = config.transparent and colors.none or colors.semantic.bg0,
        },
        NvimTreeRootFolder = { fg = colors.palette.dark_yellow, fmt = "bold" },
        NvimTreeGitDirty = { fg = colors.palette.yellow },
        NvimTreeGitNew = { fg = colors.palette.green },
        NvimTreeGitDeleted = { fg = colors.palette.red },
        NvimTreeSpecialFile = { fg = colors.palette.yellow, fmt = "underline" },
        NvimTreeIndentMarker = { fg = colors.semantic.fg },
        NvimTreeImageFile = { fg = colors.palette.dark_purple },
        NvimTreeSymlink = { fg = colors.palette.purple },
        NvimTreeFolderName = { fg = colors.palette.blue },
        NvimTreeCursorLine = { bg = colors.semantic.bg1 },
        NvimTreeWindowPicker = {
            fg = colors.palette.white,
            bg = colors.palette.grey,
        },
    }

    ---@type HighlightGroup
    higlights.plugins.indent_blankline = {
        -- TODO: IndentBlanklineChar
        -- TODO: IndentBlanklineSpaceChar
        -- TODO: IndentBlanklineSpaceCharBlankline
        -- TODO: IndentBlanklineContextSpaceChar
        IndentBlanklineContextChar = { fg = colors.semantic.fg_active },
        IndentBlanklineIndent1 = { fg = colors.primary[2] },
        IndentBlanklineIndent2 = { fg = colors.primary[3] },
        IndentBlanklineIndent3 = { fg = colors.primary[4] },
        IndentBlanklineIndent4 = { fg = colors.primary[5] },
        IndentBlanklineIndent5 = { fg = colors.primary[6] },
        IndentBlanklineIndent6 = { fg = colors.primary[7] },
        IndentBlanklineIndent7 = { fg = colors.primary[8] },
        IndentBlanklineIndent8 = { fg = colors.primary[9] },
    }

    ---@type HighlightGroup
    higlights.plugins.telescope = {
        TelescopeNormal = { bg = colors.semantic.bg1 },
        TelescopeTitle = { fg = colors.palette.dark_yellow },
        TelescopeBorder = { fg = colors.palette.red },
        TelescopePromptBorder = { fg = colors.palette.grey },
        TelescopeResultsBorder = { fg = colors.palette.grey },
        TelescopePreviewBorder = { fg = colors.palette.grey },
        TelescopeMatching = { fg = colors.palette.dark_yellow, fmt = "bold" },
        TelescopePromptPrefix = { fg = colors.palette.green },
        TelescopeSelection = { bg = colors.semantic.bg2 },
        TelescopeSelectionCaret = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    higlights.plugins.dashboard = {
        DashboardShortCut = { fg = colors.palette.blue },
        DashboardHeader = { fg = colors.palette.yellow },
        DashboardCenter = { fg = colors.palette.cyan },
        DashboardFooter = { fg = colors.palette.dark_red, fmt = "italic" },
    }

    ---@type HighlightGroup
    higlights.plugins.outline = {
        FocusedSymbol = {
            fg = colors.palette.purple,
            bg = colors.semantic.bg2,
            fmt = "bold",
        },
        AerialLine = {
            fg = colors.palette.purple,
            bg = colors.semantic.bg2,
            fmt = "bold",
        },
    }

    ---@type HighlightGroup
    higlights.plugins.ts_rainbow = {
        rainbowcol1 = { fg = colors.palette.grey },
        rainbowcol2 = { fg = colors.palette.yellow },
        rainbowcol3 = { fg = colors.palette.blue },
        rainbowcol4 = { fg = colors.palette.dark_yellow },
        rainbowcol5 = { fg = colors.palette.purple },
        rainbowcol6 = { fg = colors.palette.green },
        rainbowcol7 = { fg = colors.palette.red },
    }

    ---@type HighlightGroup
    higlights.plugins.incline = {
        InclineNormal = {
            fg = colors.semantic.fg_active,
            bg = colors.semantic.bg0,
            fmt = "bold",
        },
        InclineNormalNC = {
            fg = colors.semantic.fg_dimmed,
            bg = colors.semantic.bg0,
        },
    }

    ---@type HighlightGroup
    higlights.langs.css = {
        cssPositioningAttr = { fg = colors.palette.yellow },
        cssBoxAttr = { fg = colors.palette.yellow },
        cssTextAttr = { fg = colors.palette.blue },
        cssCommonAttr = { fg = colors.palette.blue },
        cssCascadeAttr = { fg = colors.palette.yellow },
        cssFlexibleBoxAttr = { fg = colors.palette.yellow },
        cssUnitDecorators = { fg = colors.palette.yellow },
        cssValueLength = { fg = colors.palette.dark_blue },
    }

    ---@type HighlightGroup
    higlights.langs.sass = {
        sassVariable = { fg = colors.palette.dark_yellow },
        sassProperty = { fg = colors.palette.blue },
        sassMixing = { fg = colors.palette.red },
        sassMixinName = { fg = colors.palette.purple },
        sassCssAttribute = { fg = colors.palette.yellow },
        sassDefinition = { fg = colors.palette.white },
        sassAmbersand = { fg = colors.palette.yellow },
        Character = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    higlights.langs.c = {
        cInclude = { fg = colors.palette.blue },
        cStorageClass = { fg = colors.palette.purple },
        cTypedef = { fg = colors.palette.purple },
        cDefine = { fg = colors.palette.cyan },
        cTSInclude = { fg = colors.palette.blue },
        cTSConstant = { fg = colors.palette.cyan },
        cTSConstMacro = { fg = colors.palette.purple },
        cTSOperator = { fg = colors.palette.purple },
    }

    ---@type HighlightGroup
    higlights.langs.cpp = {
        cppStatement = { fg = colors.palette.purple, fmt = "bold" },
        cppTSInclude = { fg = colors.palette.blue },
        cppTSConstant = { fg = colors.palette.cyan },
        cppTSConstMacro = { fg = colors.palette.purple },
        cppTSOperator = { fg = colors.palette.purple },
    }

    ---@type HighlightGroup
    higlights.langs.markdown = {
        markdownBlockquote = { fg = colors.palette.grey },
        markdownBold = { fg = colors.none, fmt = "bold" },
        markdownBoldDelimiter = { fg = colors.palette.grey },
        markdownCode = { fg = colors.palette.green },
        markdownCodeBlock = { fg = colors.palette.green },
        markdownCodeDelimiter = { fg = colors.palette.yellow },
        markdownH1 = { fg = colors.palette.red, fmt = "bold" },
        markdownH2 = { fg = colors.palette.purple, fmt = "bold" },
        markdownH3 = { fg = colors.palette.dark_yellow, fmt = "bold" },
        markdownH4 = { fg = colors.palette.red, fmt = "bold" },
        markdownH5 = { fg = colors.palette.purple, fmt = "bold" },
        markdownH6 = { fg = colors.palette.dark_yellow, fmt = "bold" },
        markdownHeadingDelimiter = { fg = colors.palette.grey },
        markdownHeadingRule = { fg = colors.palette.grey },
        markdownId = { fg = colors.palette.yellow },
        markdownIdDeclaration = { fg = colors.palette.red },
        markdownItalic = { fg = colors.none, fmt = "italic" },
        markdownItalicDelimiter = { fg = colors.palette.grey, fmt = "italic" },
        markdownLinkDelimiter = { fg = colors.palette.grey },
        markdownLinkText = { fg = colors.palette.red },
        markdownLinkTextDelimiter = { fg = colors.palette.grey },
        markdownListMarker = { fg = colors.palette.red },
        markdownOrderedListMarker = { fg = colors.palette.red },
        markdownRule = { fg = colors.palette.purple },
        markdownUrl = { fg = colors.palette.blue, fmt = "underline" },
        markdownUrlDelimiter = { fg = colors.palette.grey },
        markdownUrlTitleDelimiter = { fg = colors.palette.green },
    }

    ---@type HighlightGroup
    higlights.langs.php = {
        phpFunctions = {
            fg = colors.semantic.fg,
            fmt = config.code_style.functions,
        },
        phpMethods = { fg = colors.palette.cyan },
        phpStructure = { fg = colors.palette.purple },
        phpOperator = { fg = colors.palette.purple },
        phpMemberSelector = { fg = colors.semantic.fg },
        phpVarSelector = {
            fg = colors.palette.dark_yellow,
            fmt = config.code_style.variables,
        },
        phpIdentifier = {
            fg = colors.palette.dark_yellow,
            fmt = config.code_style.variables,
        },
        phpBoolean = { fg = colors.palette.cyan },
        phpNumber = { fg = colors.palette.dark_yellow },
        phpHereDoc = { fg = colors.palette.green },
        phpNowDoc = { fg = colors.palette.green },
        phpSCKeyword = {
            fg = colors.palette.purple,
            fmt = config.code_style.keywords,
        },
        phpFCKeyword = {
            fg = colors.palette.purple,
            fmt = config.code_style.keywords,
        },
        phpRegion = { fg = colors.palette.blue },
    }

    ---@type HighlightGroup
    higlights.langs.scala = {
        scalaNameDefinition = { fg = colors.semantic.fg },
        scalaInterpolationBoundary = { fg = colors.palette.purple },
        scalaInterpolation = { fg = colors.palette.purple },
        scalaTypeOperator = { fg = colors.palette.red },
        scalaOperator = { fg = colors.palette.red },
        scalaKeywordModifier = {
            fg = colors.palette.red,
            fmt = config.code_style.keywords,
        },
    }

    ---@type HighlightGroup
    higlights.langs.tex = {
        latexTSInclude = { fg = colors.palette.blue },
        latexTSFuncMacro = {
            fg = colors.semantic.fg,
            fmt = config.code_style.functions,
        },
        latexTSEnvironment = { fg = colors.palette.cyan, fmt = "bold" },
        latexTSEnvironmentName = { fg = colors.palette.yellow },
        texCmdEnv = { fg = colors.palette.cyan },
        texEnvArgName = { fg = colors.palette.yellow },
        latexTSTitle = { fg = colors.palette.green },
        latexTSType = { fg = colors.palette.blue },
        latexTSMath = { fg = colors.palette.dark_yellow },
        texMathZoneX = { fg = colors.palette.dark_yellow },
        texMathZoneXX = { fg = colors.palette.dark_yellow },
        texMathDelimZone = { fg = colors.palette.light_grey },
        texMathDelim = { fg = colors.palette.purple },
        texMathOper = { fg = colors.palette.red },
        texCmd = { fg = colors.palette.purple },
        texCmdPart = { fg = colors.palette.blue },
        texCmdPackage = { fg = colors.palette.blue },
        texPgfType = { fg = colors.palette.yellow },
    }

    ---@type HighlightGroup
    higlights.langs.vim = {
        vimOption = { fg = colors.palette.red },
        vimSetEqual = { fg = colors.palette.yellow },
        vimMap = { fg = colors.palette.purple },
        vimMapModKey = { fg = colors.palette.dark_yellow },
        vimNotation = { fg = colors.palette.red },
        vimMapLhs = { fg = colors.semantic.fg },
        vimMapRhs = { fg = colors.palette.blue },
        vimVar = { fg = colors.semantic.fg, fmt = config.code_style.variables },
        vimCommentTitle = {
            fg = colors.palette.light_grey,
            fmt = config.code_style.comments,
        },
    }

    higlights.lsp_kind_icons_color = {
        Default = colors.palette.purple,
        Class = colors.palette.yellow,
        Color = colors.palette.green,
        Constant = colors.palette.dark_yellow,
        Constructor = colors.palette.blue,
        Enum = colors.palette.purple,
        EnumMember = colors.palette.yellow,
        Event = colors.palette.yellow,
        Field = colors.palette.purple,
        File = colors.palette.blue,
        Folder = colors.palette.dark_yellow,
        Function = colors.palette.blue,
        Interface = colors.palette.green,
        Keyword = colors.palette.cyan,
        Method = colors.palette.blue,
        Module = colors.palette.dark_yellow,
        Operator = colors.palette.red,
        Property = colors.palette.cyan,
        Reference = colors.palette.dark_yellow,
        Snippet = colors.palette.red,
        Struct = colors.palette.purple,
        Text = colors.palette.light_grey,
        TypeParameter = colors.palette.red,
        Unit = colors.palette.green,
        Value = colors.palette.dark_yellow,
        Variable = colors.palette.purple,
    }

    return higlights
end

return get_default_highlights
