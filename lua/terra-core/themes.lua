---@type TerraConfig.ThemeDefinitionMap
local themes = {
    spring = {
        order = 1,
        key = "spring",
        label = "Spring",
        icon = "󰧲 ",
        group = "seasons",
        path = "terra-core.themes.spring",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_spring_day",
                path = "terra-core.themes.spring.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_spring_night",
                path = "terra-core.themes.spring.night",
            },
        },
    },
    summer = {
        order = 2,
        key = "summer",
        label = "Summer",
        icon = "󰂒 ",
        path = "terra-core.themes.summer",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_summer_day",
                path = "terra-core.themes.summer.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_summer_night",
                path = "terra-core.themes.summer.night",
            },
        },
    },
    fall = {
        order = 3,
        label = "Fall",
        key = "fall",
        icon = " ",
        path = "terra-core.themes.fall",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_fall_day",
                path = "terra-core.themes.fall.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "release",
                colorscheme_name = "terra_fall_night",
                path = "terra-core.themes.fall.night",
            },
        },
    },
    winter = {
        order = 4,
        label = "Winter",
        key = "winter",
        icon = " ",
        path = "terra-core.themes.winter",
        group = "seasons",
        variants = {
            day = {
                key = "day",
                label = "Day",
                icon = " ",
                status = "development",
                colorscheme_name = "terra_winter_day",
                path = "terra-core.themes.winter.day",
            },
            night = {
                key = "night",
                label = "Night",
                icon = "󰖔 ",
                status = "beta",
                colorscheme_name = "terra_winter_night",
                path = "terra-core.themes.winter.night",
            },
        },
    },
}

return themes
