---@doc https://github.com/folke/flash.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = false,
    map = function(colors, config)
        local ui = colors.ui
        local palette = colors.palette

        -- FlashBackdrop     Comment      backdrop
        -- FlashMatch        Search       search matches
        -- FlashCurrent      IncSearch    current match
        -- FlashLabel        Substitute   jump label
        -- FlashPrompt       MsgArea      prompt
        -- FlashPromptIcon   Special      prompt icon
        -- FlashCursor       Cursor       cursor

        ---@type BlackAtom.Highlights
        local highlights_map = {
            FlashMatch = { fg = ui.fg.invert, bg = palette.dark_magenta },
        }

        return highlights_map
    end,
}
