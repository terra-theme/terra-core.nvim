local colors = require("terra.colors")
local set_highlight_group = require("terra.actions.highlights").set_highlight_group
local notify = require("terra.actions.ui").notify

local themes = {
    spring = {
        night = require("terra.themes.spring.night").highlights,
        day = require("terra.themes.spring.day").highlights,
    },
    summer = {
        night = require("terra.themes.summer.night").highlights,
        day = require("terra.themes.summer.day").highlights,
    },
    iceland = {
        night = require("terra.themes.iceland.night").highlights,
        day = require("terra.themes.iceland.day").highlights,
    },
}

local M = {}

function M.setup()
    local season = vim.g.terra_config.season
    local time = vim.g.terra_config.time

    local highlights = themes[season][time]

    -- Set common highlights
    set_highlight_group(highlights.common)
    set_highlight_group(highlights.syntax)
    set_highlight_group(highlights.treesitter)

    -- Set language highlights
    for _, group in pairs(highlights.langs) do
        set_highlight_group(group)
    end

    -- Set plugin highlights
    for _, group in pairs(highlights.plugins) do
        set_highlight_group(group)
    end

    -- user defined highlights: set_highlights function cannot be used because it sets an attribute to none if not specified
    local function replace_color(prefix, color_name)
        if not color_name then
            return ""
        end

        if color_name:sub(1, 1) == "$" then
            local name = color_name:sub(2, -1)
            color_name = colors[name]

            if not color_name then
                vim.schedule(function()
                    notify(
                        'terra.nvim: unknown color "' .. name .. '"',
                        vim.log.levels.ERROR,
                        { title = "Terra - Error" }
                    )
                end)
                return ""
            end
        end
        return prefix .. "=" .. color_name
    end

    -- Replace custom set highlights from the config
    for group_name, group_settings in pairs(vim.g.terra_config.highlights) do
        vim.api.nvim_command(
            string.format(
                "highlight %s %s %s %s %s",
                group_name,
                replace_color("guifg", group_settings.fg),
                replace_color("guibg", group_settings.bg),
                replace_color("guisp", group_settings.sp),
                replace_color("gui", group_settings.fmt)
            )
        )
    end
end

return M
