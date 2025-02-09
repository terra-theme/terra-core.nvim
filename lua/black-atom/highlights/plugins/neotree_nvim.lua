---@doc https://github.com/nvim-neo-tree/neo-tree.nvim
---@type BlackAtom.HighlightsSpec
return {
    enabled = true,
    map = function(colors, config)
        local bg = require("black-atom.lib").bg
        local bg_dark = bg.dark(config, colors)
        local bg_main = bg.main(config, colors)

        local ui = colors.ui

        ---@type BlackAtom.Highlights
        return {
            NeoTreeNormal = { fg = ui.fg.primary.main, bg = bg_dark },
            NeoTreeNormalNC = { fg = ui.fg.neutral, bg = bg_dark },
            NeoTreeWinSeparator = { fg = bg_main },
            NeoTreeCursorLine = { bg = bg_main },
            NeoTreeDotfile = { fg = ui.fg.neutral },
            NeoTreeEndOfBuffer = { fg = bg_dark },
            NeoTreeFileName = { fg = ui.fg.primary.main },
            NeoTreeFloatBorder = { fg = bg_dark, bg = bg_dark },
            NeoTreeFloatNormal = { fg = ui.fg.primary.main, bg = bg_dark },
            NeoTreeGitConflict = { fg = ui.fg.diff.change },
            NeoTreeGitIgnored = { fg = ui.fg.neutral, italic = true },
            NeoTreeGitUntracked = { fg = ui.fg.diff.add },
            NeoTreeTitleBar = { fg = ui.fg.neutral, bg = bg_dark },
        }
    end,
}
