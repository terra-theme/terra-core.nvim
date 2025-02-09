---@doc https://github.com/DNLHC/glance.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors)
        local bg = colors.ui.bg
        local bg_main = bg.primary.main
        local bg_dark = bg.primary.dark

        local fg = colors.ui.fg
        local fg_main = fg.primary.main
        local fg_neutral = fg.neutral
        local fg_active = fg.active

        local palette = colors.palette

        local border_style = { fg = fg.active, bg = bg_dark }

        local neutral_element_style = { fg = fg_neutral, bg = bg.primary.dark }
        local file_name_style = { fg = fg_active, bg = bg.primary.dark }
        local file_path_style = neutral_element_style
        local match_style = { bg = bg.match.active }

        local preview_bg = bg_main
        local preview_normal_style = { fg = fg_main, bg = preview_bg }
        local list_bg = bg_dark
        local list_normal_style = { fg = fg_active, bg = list_bg }

        ---@type BlackAtom.Highlights
        return {
            -- Preview (The preview of the file)
            GlancePreviewNormal = preview_normal_style,
            GlancePreviewMatch = match_style,
            GlancePreviewCursorLine = { link = "CursorLine" },
            GlancePreviewSignColumn = { link = "SignColumn" },
            GlancePreviewEndOfBuffer = { link = "EndOfBuffer" },
            GlancePreviewLineNr = { link = "LineNr" },
            GlancePreviewBorderBottom = border_style,

            -- WindowBar
            GlanceWinBarFilename = file_name_style,
            GlanceWinBarFilepath = file_path_style,
            GlanceWinBarTitle = { fg = fg_active, bg = bg_dark },

            -- List (The list of affected files and references)
            GlanceListNormal = list_normal_style,
            GlanceListFilename = file_name_style,
            GlanceListFilepath = file_path_style,
            GlanceListCount = { fg = fg_active },
            GlanceListMatch = match_style,
            GlanceListCursorLine = { link = "CursorLine" },
            GlanceListEndOfBuffer = { bg = list_bg },
            GlanceListBorderBottom = border_style,

            -- Other
            GlanceFoldIcon = { fg = palette.blue },
            GlanceIndent = { fg = fg.neutral, bg = list_bg },
            GlanceBorderTop = border_style,
        }
    end,
}
