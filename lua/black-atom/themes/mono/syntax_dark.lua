---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = primaries[8],
            builtin = palette.dark_blue,
            member = primaries[9],
            parameter = primaries[10],
        },
        property = {
            default = primaries[9],
        },
        string = {
            default = palette.green,
            doc = primaries[7],
            regexp = primaries[8],
            escape = primaries[8],
        },
        constant = {
            default = primaries[9],
            builtin = primaries[8],
        },
        module = {
            default = primaries[8],
        },
        boolean = {
            default = primaries[8],
        },
        number = {
            default = primaries[8],
        },
        type = {
            default = palette.cyan,
            builtin = palette.dark_cyan,
        },
        attribute = {
            default = primaries[7],
            builtin = primaries[7],
        },
        func = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.dark_yellow,
        },
        keyword = {
            default = palette.magenta,
            import = primaries[8],
            export = primaries[8],
        },
        operator = {
            default = primaries[7],
        },
        punctuation = {
            default = primaries[6],
            delimiter = primaries[6],
            bracket = primaries[6],
            special = primaries[7],
        },
        comment = {
            default = primaries[5],
            doc = primaries[6],
            todo = palette.yellow,
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
        },
        markup = {
            heading = {
                h1 = primaries[10],
                h2 = primaries[9],
                h3 = primaries[8],
                h4 = primaries[7],
                h5 = primaries[6],
                h6 = primaries[5],
            },
            list = {
                default = primaries[7],
                checked = primaries[8],
                unchecked = primaries[6],
            },
            quote = primaries[7],
            math = primaries[8],
            link = primaries[8],
            code = {
                fg = primaries[7],
                bg = primaries[2],
            },
        },
        tag = {
            default = primaries[9],
            builtin = primaries[7],
            custom = primaries[8],
            attribute = primaries[7],
            delimiter = primaries[6],
        },
    }
end
