---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.UI
return function(primaries, palette)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            primary = {
                main = primaries[1], -- primary
                dark = primaries[2], -- secondary
                light = primaries[3], -- tertiary
            },
            active = primaries[3],
            match = {
                active = palette.magenta,
                passive = primaries[2],
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
                main = primaries[9],
                dark = primaries[8],
                light = primaries[7],
            },
            active = palette.yellow,
            invert = primaries[2],
            neutral = primaries[6],
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
