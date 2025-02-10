---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = primaries[6],
            builtin = primaries[6],
            member = primaries[5],
            parameter = palette.dark_yellow,
        },
        property = {
            default = primaries[7],
        },
        string = {
            default = primaries[5],
            doc = primaries[4],
            regexp = primaries[9],
            escape = primaries[9],
        },
        constant = {
            default = primaries[6],
            builtin = primaries[7],
        },
        module = {
            default = palette.yellow,
        },
        boolean = {
            default = palette.gray,
        },
        number = {
            default = primaries[6],
        },
        type = {
            default = primaries[9],
            builtin = primaries[7],
        },
        attribute = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        func = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.yellow,
        },
        keyword = {
            default = primaries[8],
            import = primaries[6],
            export = primaries[6],
        },
        operator = {
            default = palette.white,
        },
        punctuation = {
            default = palette.white,
            delimiter = palette.white,
            bracket = palette.white,
            special = palette.white,
        },
        comment = {
            default = palette.gray,
            doc = primaries[6],
            todo = palette.green,
            error = palette.red,
            warn = palette.yellow,
            info = palette.blue,
            hint = palette.dark_yellow,
        },
        markup = {
            heading = {
                h1 = palette.yellow,
                h2 = palette.yellow,
                h3 = palette.yellow,
                h4 = palette.gray,
                h5 = palette.gray,
                h6 = palette.gray,
            },
            list = {
                default = palette.gray,
                checked = palette.green,
                unchecked = palette.gray,
            },
            quote = palette.green,
            math = palette.dark_green,
            link = palette.green,
            code = {
                fg = primaries[7],
                bg = primaries[3],
            },
        },
        tag = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            custom = palette.yellow,
            attribute = primaries[4],
            delimiter = primaries[5],
        },
    }
end
