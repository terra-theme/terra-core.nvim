local ui = require("black-atom.themes.default.ui_light")
local syntax = require("black-atom.themes.default.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-medical",
    label = "Black Atom - Medical",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "light",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1e2229",
    "#2b3b33",
    "#384b42",
    "#425953",

    -- Mids
    "#476a5f",
    "#517a65",
    "#669a84",
    "#77a494",

    -- Highs
    "#a6bdb2",
    "#b7cac1",
    "#c2d3cb",
    "#d0e0d8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#db577c",
    red = "#ec7aa2",

    dark_green = "#357c35",
    green = "#3c8e3c",

    dark_yellow = "#d9950f",
    yellow = "#60a918",

    dark_blue = M.primaries[6],
    blue = M.primaries[5],

    dark_magenta = "#7768cd",
    magenta = "#998ed9",

    dark_cyan = "#389248",
    cyan = "#4aaa5b",

    light_gray = M.primaries[8],
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
