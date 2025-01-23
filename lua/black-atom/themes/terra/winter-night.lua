local ui = require("black-atom.themes.terra.ui_dark")
local syntax = require("black-atom.themes.terra.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "terra-winter-night",
    label = "Terra Winter Night",
    collection = {
        key = "terra",
        label = "Terra",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#18191b",
    "#212225",
    "#2c2d30",
    "#34363b",

    -- Mids
    "#454955",
    "#5b6171",
    "#707a92",
    "#8a8fa7",

    -- Highs
    "#a6afc1",
    "#c0c8d8",
    "#cdd6e4",
    "#dbe4ef",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#a65959",
    red = "#b86a6a",

    dark_green = "#507765",
    green = "#5e9e8b",

    dark_yellow = "#eba778",
    yellow = "#d3b17a",

    dark_blue = "#94acb8",
    blue = "#8c9bc2",

    dark_magenta = "#b793b7",
    magenta = "#c8adc8",

    dark_cyan = "#568383",
    cyan = "#67a5a5",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = ui(M.primaries, M.palette),
    syntax = syntax(M.primaries, M.palette),
}

return M
