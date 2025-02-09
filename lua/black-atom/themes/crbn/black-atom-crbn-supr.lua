local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-supr",
    label = "Black Atom - CRBN [SUPR]",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
    appearance = "light",
    icon = " 󰛸 ",
    status = "beta",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#1d2730",
    "#344859",
    "#415a70",

    -- Mids
    "#6c7f92",
    "#8999a8",
    "#a2b5c5",

    -- Highs
    "#e2e6ea",
    "#f0f3f6",
    "#feffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#f2280d",
    red = "#ff4b33",

    dark_green = "#59cc33",
    green = "#7ad65c",

    dark_yellow = "#ff4302",
    yellow = "#FF6833",

    dark_blue = "#1661EB",
    blue = "#337AFF",

    dark_magenta = M.primaries[5],
    magenta = M.primaries[6],

    dark_cyan = M.primaries[3],
    cyan = M.primaries[2],

    light_gray = M.primaries[7],
    white = M.primaries[9],
}

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.crbn.syntax_light")(M.primaries, M.palette)

---@typ BlackAtom.Theme.UI
M.ui = require("black-atom.themes.crbn.ui_light")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
