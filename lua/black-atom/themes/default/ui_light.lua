local darken = require("black-atom.lib.color").darken

---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.UI
return function(primaries, palette)
    return {
        bg = {
            primary = {
                dark = primaries[10],
                main = primaries[11],
                light = primaries[12],
            },
            secondary = {
                dark = primaries[7],
                main = primaries[8],
                light = primaries[9],
            },
            active = primaries[5],
            match = {
                active = darken(palette.green, 0.25, primaries[11]),
                passive = darken(palette.magenta, 0.15, primaries[11]),
            },
            diff = {
                add = palette.green,
                delete = palette.red,
                change = palette.blue,
                text = palette.dark_blue,
            },
        },
        fg = {
            primary = {
                dark = primaries[1],
                main = primaries[2],
                light = primaries[3],
            },
            secondary = {
                dark = primaries[4],
                main = primaries[5],
                light = primaries[6],
            },
            active = palette.red,
            invert = primaries[11],
            neutral = primaries[7],
            diff = {
                add = palette.green,
                delete = palette.red,
                change = palette.blue,
                text = palette.dark_blue,
            },
        },
        feedback = {
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
            todo = palette.yellow,
            success = palette.green,
        },
    }
end
