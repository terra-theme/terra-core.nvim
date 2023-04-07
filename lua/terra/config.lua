local M = {}

---@type TerraConfig.Time[]
M.times = {
    "night",
    "day",
}

---@type TerraConfig.Season[]
M.seasons = {
    "spring",
    "summer",
    "fall",
    "winter",
}

---@type TerraConfig
M.default_config = {
    debug = false,

    season = M.seasons[1],
    time = M.times[1],

    icons = {
        spring = " ",
        summer = " ",
        fall = " ",
        winter = " ",
    },

    select_season = "<leader>Ts",
    select_time = "<leader>Tt",

    transparent = false,
    term_colors = true,
    ending_tildes = false,

    code_style = {
        comments = {
            italic = true,
        },
        keywords = {
            bold = true,
            italic = true,
        },
        functions = {},
        strings = {
            italic = true,
        },
        variables = {},
        messages = {
            bold = true,
        },
    },

    colors = {},

    diagnostics = {
        darker = false,
        undercurl = false,
        background = false,
    },
}

return M
