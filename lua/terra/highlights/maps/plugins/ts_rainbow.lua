---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            rainbowcol1 = { fg = colors.palette.gray },
            rainbowcol2 = { fg = colors.palette.yellow },
            rainbowcol3 = { fg = colors.palette.blue },
            rainbowcol4 = { fg = colors.palette.dark_yellow },
            rainbowcol5 = { fg = colors.palette.magenta },
            rainbowcol6 = { fg = colors.palette.green },
            rainbowcol7 = { fg = colors.palette.red },
        }

        return highlights_map
    end,
}

return highlight_map_extension
