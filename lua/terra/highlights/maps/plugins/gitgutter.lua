---@type TerraHighlightsSpec
local highlight_map_extension = {
    map = function(colors)
        ---@type TerraHighlights
        local highlights_map = {
            GitGutterAdd = { fg = colors.palette.green },
            GitGutterChange = { fg = colors.palette.blue },
            GitGutterDelete = { fg = colors.palette.red },
        }

        return highlights_map
    end,
}

return highlight_map_extension
