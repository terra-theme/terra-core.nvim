local ui = require("black-atom.themes.jpn.ui_dark")
local syntax = require("black-atom.themes.jpn.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-yoru",
    label = "Black Atom - JPN - Koyo [Yoru]",
    collection = {
        key = "jpn",
        label = "JPN",
    },
    appearance = "dark",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#271f27",
    "#332733",
    "#3f2f3f",
    "#4a384a",

    -- Mids
    "#605872",
    "#7a7190",
    "#958da6",
    "#b0aabc",

    -- Highs
    "#dab18c",
    "#e0be9f",
    "#e6cbb2",
    "#ecd8c5",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[6],

    dark_red = "#c2564b",
    red = "#d6675c",

    dark_green = "#53ad82",
    green = "#7ab89b",

    dark_yellow = "#e79253",
    yellow = "#e7aa55",

    dark_blue = "#a88a94",
    blue = "#a095a8",

    dark_magenta = "#efa376",
    magenta = "#FEBE98",

    dark_cyan = "#68b19a",
    cyan = "#8cc1b0",

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
