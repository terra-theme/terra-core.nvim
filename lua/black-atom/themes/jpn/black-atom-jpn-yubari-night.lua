local M = {}

---@type BlackAtom.Theme.Meta
M.meta = {
    key = "black-atom-jpn-yubari-night",
    label = "Black Atom - JPN - Yubari [Night]",
    collection = {
        key = "default",
        label = "Default",
    },
    appearance = "dark",
    icon = "󰒲 ", -- You might want to change this icon
    status = "release",
}

---@type BlackAtom.Theme.Primaries
M.primaries = {
    -- Lows (darker)
    "#0e110f",
    "#151917",
    "#1c211f",
    "#252c29",

    -- Mids
    "#3a4540",
    "#51615a",
    "#687d74",
    "#81978e",

    -- Highs
    "#b3cccc",
    "#c2d6d6",
    "#d9e5e5",
    "#eef3f3",
}

---@type BlackAtom.Theme.Palette
M.palette = {
    black = M.primaries[3],
    gray = "#708090", -- lack

    dark_red = "#ab5353", -- darker red
    red = "#b76b6b", -- red

    dark_green = "#648364", -- darker green
    green = "#789978", -- green

    dark_yellow = "#8f8f5f", -- darker yellow
    yellow = "#abab77", -- yellow

    dark_blue = "#5f6e8f", -- darker blue
    blue = "#7788AA", -- blue

    dark_magenta = "#cc8870", -- darker orange
    magenta = "#ffaa88", -- orange

    dark_cyan = "#5f8f8f", -- mix of lack and green
    cyan = "#789990", -- mix of lack and green

    light_gray = M.primaries[8],
    white = M.primaries[11],
}

---@type BlackAtom.Theme.Syntax
M.syntax = {
    variable = {
        default = M.primaries[8],
        builtin = M.palette.dark_blue,
        member = M.primaries[9],
        parameter = M.primaries[10],
    },
    property = {
        default = M.primaries[9],
    },
    string = {
        default = M.palette.green,
        doc = M.primaries[7],
        regexp = M.primaries[8],
        escape = M.primaries[8],
    },
    constant = {
        default = M.primaries[9],
        builtin = M.primaries[8],
    },
    module = {
        default = M.primaries[8],
    },
    boolean = {
        default = M.primaries[8],
    },
    number = {
        default = M.primaries[8],
    },
    type = {
        default = M.palette.cyan,
        builtin = M.palette.dark_cyan,
    },
    attribute = {
        default = M.primaries[7],
        builtin = M.primaries[7],
    },
    func = {
        default = M.palette.yellow,
        builtin = M.palette.dark_yellow,
        method = M.palette.yellow,
    },
    constructor = {
        default = M.palette.dark_yellow,
    },
    keyword = {
        default = M.palette.magenta,
        import = M.primaries[8],
        export = M.primaries[8],
    },
    operator = {
        default = M.primaries[7],
    },
    punctuation = {
        default = M.primaries[6],
        delimiter = M.primaries[6],
        bracket = M.primaries[6],
        special = M.primaries[7],
    },
    comment = {
        default = M.primaries[5],
        doc = M.primaries[6],
        todo = M.palette.yellow,
        error = M.palette.red,
        warn = M.palette.yellow,
        info = M.palette.blue,
        hint = M.palette.dark_yellow,
    },
    markup = {
        heading = {
            h1 = M.primaries[10],
            h2 = M.primaries[9],
            h3 = M.primaries[8],
            h4 = M.primaries[7],
            h5 = M.primaries[6],
            h6 = M.primaries[5],
        },
        list = {
            default = M.primaries[7],
            checked = M.primaries[8],
            unchecked = M.primaries[6],
        },
        quote = M.primaries[7],
        math = M.primaries[8],
        link = M.primaries[8],
        code = {
            fg = M.primaries[7],
            bg = M.primaries[2],
        },
    },
    tag = {
        default = M.primaries[9],
        builtin = M.primaries[7],
        custom = M.primaries[8],
        attribute = M.primaries[7],
        delimiter = M.primaries[6],
    },
}

---@typ BlackAtom.Theme.UI
M.ui = {
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
        active = M.primaries[4],
        match = {
            active = M.palette.yellow,
            passive = M.primaries[4],
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
        active = M.palette.dark_yellow,
        invert = M.primaries[2],
        neutral = M.primaries[6],
        diff = {
            add = M.palette.green,
            delete = M.palette.red,
            change = M.palette.blue,
            text = M.palette.dark_blue,
        },
    },
    feedback = {
        error = M.palette.red,
        warn = M.palette.yellow,
        info = M.palette.blue,
        hint = M.palette.dark_yellow,
        todo = M.palette.yellow,
        success = M.palette.green,
    },
}

---@type BlackAtom.Theme.Colors
M.colors = {
    none = "NONE",
    primaries = M.primaries,
    palette = M.palette,
    ui = M.ui,
    syntax = M.syntax,
}

return M
