---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.UI
return function(primaries, palette)
    ---@type BlackAtom.Theme.UI
    return {
        bg = {
            primary = {
                dark = primaries[8], -- secondary
                main = primaries[9], -- primary
                light = primaries[7], -- tertiary
            },
            active = primaries[7],
            match = {
                active = palette.magenta,
                passive = primaries[8],
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
            active = palette.yellow,
            invert = primaries[8],
            neutral = primaries[4],
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
