local utils = require("terra-core.utils")

local M = {}

---@type TerraColors.Debug
M.debug = {
    neon_pink = "#FF69B4",
    electric_lime = "#CCFF00",
    vivid_cyan = "#00FFFF",
}

---@type TerraColors.Primaries
M.primaries = {
    -- Lows
    "#1d201f",
    "#212523",
    "#272c2a",
    "#313634",

    -- Mids
    "#394740",
    "#51635a",
    "#677e72",
    "#82978c",

    -- Highs
    "#b8aa94",
    "#c3b8a4",
    "#d6d0c2",
    "#e0ddd1",
}

---@type TerraColors.Palette
M.palette = {
    black = M.primaries[4],
    gray = M.primaries[5],

    dark_red = "#b86447",
    red = "#d18661",

    dark_green = "#6a9f60",
    green = "#8ac090",

    dark_yellow = "#efa774",
    yellow = "#d7b276",

    dark_blue = "#9f99e6",
    blue = "#99b9e6",

    dark_magenta = "#d5a9c3",
    magenta = "#c6b3da",

    dark_cyan = "#679980",
    cyan = "#85ad9f",

    light_gray = M.primaries[9],
    white = M.primaries[11],
}
---@type TerraColors.Semantics
M.semantics = {
    bg = {
        primary = {
            dark = M.primaries[1],
            main = M.primaries[2],
            light = M.primaries[3],
        },
        secondary = {
            dark = M.primaries[4],
            main = M.primaries[5],
            light = M.primaries[6],
        },
        active = M.primaries[8],
        match = {
            active = utils.color.darken(M.palette.magenta, 0.35, M.primaries[3]),
            passive = utils.color.darken(M.palette.magenta, 0.15, M.primaries[1]),
        },
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    fg = {
        primary = {
            dark = M.primaries[10],
            main = M.primaries[11],
            light = M.primaries[12],
        },
        secondary = {
            dark = M.primaries[7],
            main = M.primaries[8],
            light = M.primaries[9],
        },
        active = M.palette.green,
        invert = M.primaries[2],
        neutral = M.primaries[6],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
}

---@return TerraColors
M.colors = function()
    return {
        none = "none",
        debug = M.debug,
        primaries = M.primaries,
        palette = M.palette,
        semantics = M.semantics,
    }
end

return M
