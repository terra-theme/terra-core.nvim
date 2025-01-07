local ui = require("black-atom.themes.jpn.ui_light")
local syntax = require("black-atom.themes.jpn.syntax_light")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-koyo-hiru",
    label = "Black Atom - JPN - Koyo [Hiru]",
    collection = {
        key = "jpn",
        label = "JPN",
    },
    appearance = "light",
    icon = " 󰖔 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#373240",
    "#4a4457",
    "#544a66",
    "#605673",

    -- Mids
    "#605872",
    "#7a7190",
    "#958da6",
    "#b0aabc",

    -- Highs
    "#cab9af",
    "#d2c4bb",
    "#dacec7",
    "#ded4cd",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[6],

    dark_red = "#cc4233",
    red = "#e05252",

    dark_green = "#2a6f4e",
    green = "#389468",

    dark_yellow = "#d2632d",
    yellow = "#e27e37",

    dark_blue = "#a65973",
    blue = "#8859a6",

    dark_magenta = "#de553b",
    magenta = "#f57056",

    dark_cyan = "#4f7c6e",
    cyan = "#659988",

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
