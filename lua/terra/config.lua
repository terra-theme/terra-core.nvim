local M = {}

---@type Season[]
M.seasons = {
    "spring",
    "summer",
    "iceland",
}

---@type TerraConfig
M.default_config = {
    season = M.seasons[1], -- Currently set season
    time = "night", -- Current set time of day

    icons = { -- Icons associated with each season
        spring = "",
        summer = "",
        fall = "",
        winter = "",
        iceland = "",
    },

    select_season = "<leader>Ts",
    select_time = "<leader>Tt", -- Normal mode mapping string for triggering the `time` selection

    transparent = false, -- Wether to render the background color
    term_colors = true, -- Wether to enable terminal colors
    ending_tildes = false, -- Wether to show the end-of-buffer tildes
    cmp_itemkind_reverse = false, -- Wether to reverse item kind highlights in cmp menu

    code_style = { -- Code styling options
        comments = {
            italic = true,
        },
        keywords = {
            bold = true,
        },
        functions = {},
        strings = {
            italic = true,
        },
        variables = {},
    },

    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight colors

    diagnostics = { -- Diagnostics related settings
        darker = false, -- Wether to use darker colors for diagnostics
        undercurl = false, -- Wether to use undercurls for diagnostics
        background = false, -- Wether to use background color for virtual text
    },
}

return M
