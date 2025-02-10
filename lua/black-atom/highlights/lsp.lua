---@type BlackAtom.HighlightsSpec
local highlight_map_extension = {
    map = function(colors, config)
        local cond_hl = require("black-atom.lib.highlights").cond_hl
        local darken = require("black-atom.lib.color").darken
        local styles = config.styles or {}

        local diagnostics_error_color = colors.palette.red
        local diagnostics_warn_color = colors.palette.yellow
        local diagnostics_hint_color = colors.palette.blue
        local diagnostics_info_color = colors.palette.green

        ---@type BlackAtom.Highlights
        local highlights_map = {
            LspCxxHlGroupEnumConstant = { fg = colors.palette.dark_yellow },
            LspCxxHlGroupMemberVariable = { fg = colors.palette.dark_yellow },
            LspCxxHlGroupNamespace = { fg = colors.palette.blue },
            LspCxxhighlightskippedRegion = { fg = colors.palette.gray },
            LspCxxhighlightskippedRegionBeginEnd = { fg = colors.palette.red },

            DiagnosticError = { fg = colors.palette.red },
            DiagnosticHint = { fg = colors.palette.blue },
            DiagnosticInfo = { fg = colors.palette.cyan },
            DiagnosticWarn = { fg = colors.palette.yellow },

            DiagnosticVirtualTextError = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(diagnostics_error_color, 0.1, colors.ui.bg.primary.main),
                }),
                fg = diagnostics_error_color,
            },
            DiagnosticVirtualTextWarn = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(diagnostics_warn_color, 0.1, colors.ui.bg.primary.main),
                }),
                fg = diagnostics_warn_color,
            },
            DiagnosticVirtualTextInfo = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(diagnostics_info_color, 0.1, colors.ui.bg.primary.main),
                }),
                fg = diagnostics_info_color,
            },
            DiagnosticVirtualTextHint = {
                bg = cond_hl(colors.none, {
                    [styles.diagnostics.background] = darken(diagnostics_hint_color, 0.1, colors.ui.bg.primary.main),
                }),
                fg = diagnostics_hint_color,
            },

            DiagnosticUnderlineError = {
                sp = colors.palette.red,
                config.styles.diagnostics.undercurl and { undercurl = true },
            },
            DiagnosticUnderlineHint = {
                config.styles.diagnostics.undercurl and { undercurl = true },
                sp = colors.palette.blue,
            },
            DiagnosticUnderlineInfo = {
                config.styles.diagnostics.undercurl and { undercurl = true },
                sp = colors.palette.blue,
            },
            DiagnosticUnderlineWarn = {
                config.styles.diagnostics.undercurl and { undercurl = true },
                sp = colors.palette.yellow,
            },

            LspReferenceText = { underline = true },
            LspReferenceWrite = { underline = true },
            LspReferenceRead = { underline = true },

            LspCodeLens = { fg = colors.palette.gray },
            LspCodeLensSeparator = { fg = colors.palette.gray },

            LspDiagnosticsDefaultError = { link = "DiagnosticError" },
            LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
            LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
            LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
            LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
            LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
            LspDiagnosticsUnderlineInformation = {
                link = "DiagnosticUnderlineInfo",
            },
            LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
            LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
            LspDiagnosticsVirtualTextWarning = {
                link = "DiagnosticVirtualTextWarn",
            },
            LspDiagnosticsVirtualTextInformation = {
                link = "DiagnosticVirtualTextInfo",
            },
            LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
        }

        return highlights_map
    end,
}

return highlight_map_extension
