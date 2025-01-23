---@doc https://github.com/ibhagwan/fzf-lua
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local lib = require("black-atom.lib")
        local fg = colors.ui.fg
        local bg = colors.ui.bg
        local bg_dark = lib.bg.dark(config, colors)

        ---@type BlackAtom.Highlights
        return {
            FzfLuaNormal = { fg = fg.primary.main, bg = bg_dark },
            FzfLuaTitle = { fg = fg.active, bg = bg_dark },
            FzfLuaBorder = { link = "FloatBorder" },
            FzfLuaPreviewBorder = { link = "FloatBorder" },
            FzfLuaCursorLine = { bg = bg.primary.main },
            FzfLuaDirPart = { fg = fg.neutral },
        }
    end,
}
