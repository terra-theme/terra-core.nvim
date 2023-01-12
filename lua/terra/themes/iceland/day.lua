local extend_defaults = require("terra.actions.highlights").extend_defaults

local M = {}

---@class Primary
M.primary = {
    "#0d0d0d",
    "#111111",
    "#1a1a1a",
    "#1f1f1f",
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
    black = M.primary[1],
    grey = M.primary[4], -- FIX: grey/gray

    dark_red = "#d6582e",
    red = "#da714d",

    dark_green = "#5b9257",
    green = "#83c67f",

    dark_yellow = "#faa04c",
    yellow = "#F2C14E",

    dark_blue = "#6199d1",
    blue = "#7CA6CF",

    dark_purple = "#B07BAC",
    purple = "#BFA9D6",

    dark_cyan = "#5aaf7d",
    cyan = "#75bd93",

    light_gray = M.primary[9],
    white = M.primary[11],
}

-- NOTE: Build out and improve and align semantics with vscode
---Second Level Semantics Color Definitions which have to be based on the Palette colors
---@class Semantic
M.semantic = {
    bg0 = M.primary[9],
    bg1 = M.palette.white,
    bg2 = M.primary[7],
    bg3 = M.primary[6],

    fg = M.palette.black,
    fg_active = M.palette.yellow,
    fg_dimmed = M.palette.grey,

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
