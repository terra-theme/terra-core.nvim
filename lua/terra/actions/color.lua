local M = {}

-- TODO: Remove these
M.bg = "#000000"
M.fg = "#ffffff"

local function hexToRgb(hex_str)
    local hex = "[abcdef0-9][abcdef0-9]"
    local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
    hex_str = string.lower(hex_str)

    assert(
        string.find(hex_str, pat) ~= nil,
        "hex_to_rgb: invalid hex_str: " .. tostring(hex_str)
    )

    local r, g, b = string.match(hex_str, pat)
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
M.blend = function(fg, bg, alpha)
    bg = hexToRgb(bg)
    fg = hexToRgb(fg)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format(
        "#%02X%02X%02X",
        blendChannel(1),
        blendChannel(2),
        blendChannel(3)
    )
end

-- Used in highlights.lua
M.darken = function(hex, amount, bg)
    return M.blend(hex, bg or M.bg, math.abs(amount))
end

-- Used in highlights.lua
M.lighten = function(hex, amount, fg)
    return M.blend(hex, fg or M.fg, math.abs(amount))
end

return M
