local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-mono-one-dark",
    label = "Black Atom - MONO - 1 [DARK]",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = "󰒲 ", -- You might want to change this icon
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows (darker)
    "#0e110f",
    "#151917",
    "#1c211f",
    "#252c29",

    -- Mids
    "#3a4540",
    "#51615a",
    "#687d74",
    "#81978e",

    -- Highs
    "#b3cccc",
    "#c2d6d6",
    "#d9e5e5",
    "#eef3f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = "#708090", -- lack

    dark_red = "#ab5353", -- darker red
    red = "#b76b6b", -- red

    dark_green = "#648364", -- darker green
    green = "#789978", -- green

    dark_yellow = "#8f8f5f", -- darker yellow
    yellow = "#abab77", -- yellow

    dark_blue = "#5f6e8f", -- darker blue
    blue = "#7788AA", -- blue

    dark_magenta = "#cc8870", -- darker orange
    magenta = "#ffaa88", -- orange

    dark_cyan = "#5f8f8f", -- mix of lack and green
    cyan = "#789990", -- mix of lack and green

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.mono.syntax_dark")(M.primaries, M.palette)

---@typ BlackAtom.Theme.UI
M.ui = require("black-atom.themes.mono.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
