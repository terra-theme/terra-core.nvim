local ui = require("black-atom.themes.default.ui_light")
local syntax = require("black-atom.themes.default.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-research",
    label = "Black Atom - Research",
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
    "#51796d",
    "#5b8972",
    "#75a490",
    "#95b8ac",

    -- Highs
    "#b5c8bf",
    "#c6d5ce",
    "#d4e0da",
    "#dfeae5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#db577c",
    red = "#ec7aa2",

    dark_green = "#4a9a4a",
    green = "#53aa53",

    dark_yellow = "#e69d0c",
    yellow = "#66ad1f",

    dark_blue = M.primaries[6],
    blue = M.primaries[5],

    dark_magenta = "#887bd3",
    magenta = "#998ed9",

    dark_cyan = "#459f55",
    cyan = "#4db15e",

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
