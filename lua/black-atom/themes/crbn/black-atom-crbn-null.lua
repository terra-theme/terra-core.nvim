local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-crbn-null",
    label = "Black Atom - CRBN [NULL]",
    collection = {
        key = "crbn",
        label = "CRBN",
    },
    appearance = "dark",
    icon = " 󰛸 ",
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows
    "#202933",
    "#2e3e4d",
    "#3c5369",

    -- Mids
    "#5c6d7e",
    "#788a9c",
    "#8ea6b9",

    -- Highs
    "#d3d9df",
    "#e0e6ec",
    "#ebf2f8",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[2],
    gray = M.primaries[4],

    dark_red = "#f33e25",
    red = "#ff624d",

    dark_green = "#6ad147",
    green = "#8bdb70",

    dark_yellow = "#ee9366",
    yellow = "#ff8357",

    dark_blue = "#4481ef",
    blue = "#679cff",

    dark_magenta = M.primaries[5],
    magenta = M.primaries[6],

    dark_cyan = M.primaries[3],
    cyan = M.primaries[2],

    dark_gray = M.primaries[7],
    white = M.primaries[9],
}

---@type BlackAtom.Theme.Syntax
M.syntax = require("black-atom.themes.crbn.syntax_dark")(M.primaries, M.palette)

---@typ BlackAtom.Theme.UI
M.ui = require("black-atom.themes.crbn.ui_dark")(M.primaries, M.palette)

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
