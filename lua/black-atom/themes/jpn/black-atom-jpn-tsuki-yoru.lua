local ui = require("black-atom.themes.jpn.ui_dark")
local syntax = require("black-atom.themes.jpn.syntax_dark")

local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-tsuki-yoru",
    label = "Black Atom - JPN - Edo Yoru",
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
    "#121212",
    "#171717",
    "#1e1e1e",
    "#252525",

    -- Mids
    "#4f4f61",
    "#69697f",
    "#828299",
    "#9d9daf",

    -- Highs
    "#ababba",
    "#c7c7d1",
    "#e3e3e8",
    "#f1f1f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

    dark_red = "#EA83A5",
    red = "#E29ECA",

    dark_green = "#71a584",
    green = "#90B99F",

    dark_yellow = "#F5A191",
    yellow = "#E6B99D",

    dark_blue = M.primaries[7],
    blue = M.primaries[8],

    dark_magenta = "#9789c3",
    magenta = "#ACA1CF",

    dark_cyan = "#6aaf9e",
    cyan = "#98cec0",

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
