---@doc https://github.com/username/plugin-name
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            SnacksPickerCursorLine = { bg = ui.bg.active },
            SnacksPickerListCursorLine = { link = "SnacksPickerCursorLine" },
        }
    end,
}
