---@doc https://github.com/echasnovski/mini.nvim
---@type BlackAtom.HighlightsSpec
return {
    map = function(colors, config)
        local bg_main = require("black-atom.lib").bg.main(config, colors)
        local bg_dark = require("black-atom.lib").bg.dark(config, colors)

        ---@type BlackAtom.Highlights
        return {
            -- mini.pick
            MiniPickPrompt = { bg = bg_dark },
            MiniPickMatchCurrent = { bg = bg_main },
        }
    end,
}
