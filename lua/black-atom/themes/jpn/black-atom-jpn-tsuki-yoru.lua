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
    "#0f0f0f",
    "#1c1c1c",
    "#282828",
    "#373737",

    -- Mids
    "#4f4f61",
    "#69697f",
    "#828299",
    "#9d9daf",

    -- Highs
    "#b3b3b3",
    "#cbcbcb",
    "#e6e6e6",
    "#ffffff",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = M.primaries[5],

    dark_red = "#f2759e",
    red = "#F591B2",

    dark_green = "#71a584",
    green = "#90B99F",

    dark_yellow = "#f6a090",
    yellow = "#eab899",

    dark_blue = "#8699c1",
    blue = "#a1b0cf",

    dark_magenta = "#9789c3",
    magenta = "#ACA1CF",

    dark_cyan = "#76bdac",
    cyan = "#8dd9c5",

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
