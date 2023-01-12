local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@class Primary
M.primary = {
    "#0a0e10",
    "#0e1214",
    "#161b1e",
    "#1a2124",
    "#4c4c4c",
    "#737373",
    "#8d8d8d",
    "#a6a6a6",
    "#b3b3b3",
    "#bfbfbf",
    "#d9d9d9",
    "#e6e6e6",
}

---@class Palette Base theme color pallette
M.palette = {
    black = M.primary[4],
    gray = M.primary[5],

    dark_red = "#d95326",
    red = "#df6c44",

    dark_green = "#529a4b",
    green = "#7ecc76",

    dark_yellow = "#f6a256",
    yellow = "#ebb948",

    dark_blue = "#4dbfe5",
    blue = "#71bcd5",

    dark_purple = "#AF79AB",
    purple = "#BFA9D6",

    dark_cyan = "#56AE89",
    cyan = "#75BD93",

    light_gray = M.primary[9],
    white = M.primary[11],
}

-- NOTE: Build out and improve and align semantics with vscode
---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@class Semantic
M.semantic = {
    bg0 = M.primary[1],
    bg1 = M.primary[2],
    bg2 = M.primary[3],
    bg3 = M.primary[5],

    fg = M.palette.white,
    fg_active = M.palette.yellow,
    fg_dimmed = M.palette.gray,

    diff_add = M.palette.green,
    diff_delete = M.palette.red,
    diff_change = M.palette.blue,
    diff_text = M.palette.dark_blue,
}

---A merged table of the theme primary, palette and semantic colors
---@return Colors
function M.colors()
    return {
        none = "none",
        primary = M.primary,
        palette = M.palette,
        semantic = M.semantic,
    }
end

M.highlights = extend_defaults(M.colors(), {})

return M
