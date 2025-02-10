---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = primaries[2],
            builtin = primaries[2],
            member = primaries[3],
            parameter = palette.dark_yellow,
        },
        property = {
            default = primaries[3],
        },
        string = {
            default = primaries[4],
            doc = primaries[6],
            regexp = primaries[1],
            escape = primaries[1],
        },
        constant = {
            default = primaries[1],
            builtin = primaries[1],
        },
        module = {
            default = palette.blue,
        },
        boolean = {
            default = palette.gray,
        },
        number = {
            default = primaries[4],
        },
        type = {
            default = primaries[1],
            builtin = primaries[3],
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
            default = primaries[3],
            import = primaries[5],
            export = primaries[5],
        },
        operator = {
            default = palette.black,
        },
        punctuation = {
            default = palette.black,
            delimiter = palette.black,
            bracket = palette.black,
            special = palette.black,
        },
        comment = {
            default = palette.gray,
            doc = primaries[5],
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
                fg = primaries[6],
                bg = primaries[10],
            },
        },
        tag = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            custom = palette.yellow,
            attribute = primaries[5],
            delimiter = primaries[4],
        },
    }
end
