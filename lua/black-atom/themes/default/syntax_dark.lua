---@param primaries BlackAtom.Theme.Primaries
---@param palette BlackAtom.Theme.Palette
---@return BlackAtom.Theme.Syntax
return function(primaries, palette)
    return {
        variable = {
            default = palette.blue,
            builtin = palette.blue,
            member = palette.dark_blue,
            parameter = palette.dark_yellow,
        },
        property = {
            default = palette.blue,
        },
        string = {
            default = palette.green,
            doc = palette.green,
            regexp = palette.red,
            escape = palette.red,
        },
        constant = {
            default = primaries[10],
            builtin = palette.dark_red,
        },
        module = {
            default = palette.dark_blue,
        },
        boolean = {
            default = palette.dark_green,
        },
        number = {
            default = palette.dark_green,
        },
        type = {
            default = palette.cyan,
            builtin = palette.dark_cyan,
        },
        attribute = {
            default = palette.dark_yellow,
            builtin = palette.dark_yellow,
        },
        func = {
            default = palette.yellow,
            builtin = palette.yellow,
            method = palette.yellow,
        },
        constructor = {
            default = palette.yellow,
        },
        keyword = {
            default = palette.magenta,
            import = palette.red,
            export = palette.red,
        },
        operator = {
            default = palette.magenta,
        },
        punctuation = {
            default = palette.light_gray,
            delimiter = primaries[8],
            bracket = palette.light_gray,
            special = palette.light_gray,
        },
        comment = {
            default = palette.gray,
            doc = palette.dark_green,
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
                h4 = palette.light_gray,
                h5 = palette.light_gray,
                h6 = palette.light_gray,
            },
            list = {
                default = palette.light_gray,
                checked = palette.green,
                unchecked = palette.light_gray,
            },
            quote = palette.green,
            math = palette.dark_green,
            link = palette.green,
            code = {
                fg = palette.gray,
                bg = palette.black,
            },
        },
        tag = {
            default = palette.yellow,
            builtin = palette.dark_yellow,
            custom = palette.yellow,
            attribute = primaries[8],
            delimiter = primaries[9],
        },
    }
end
