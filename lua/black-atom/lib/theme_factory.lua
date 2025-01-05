local M = {}

---@class BlackAtom.Theme.UI.LayerFeedback
---@field error string
---@field warn string
---@field info string
---@field hint string
---@field success string

---@class BlackAtom.Theme.UI.LayerDiff
---@field add string
---@field delete string
---@field modify string
---@field text string

---@class BlackAtom.Theme.UI.LayerConfig
---@field bg string Base background color
---@field fg string Base foreground color
---@field accent string Accent color
---@field muted string Color for muted elements
---@field feedback BlackAtom.Theme.UI.LayerFeedback Layer-specific feedback colors
---@field diff BlackAtom.Theme.UI.LayerDiff Layer-specific diff colors
---@field border? string Optional border color for the layer

-- Helper Functions
---@param bg string Background color
---@param fg string Foreground color
---@param border? string Optional border color
---@return BlackAtom.Theme.UI.Variant
function M.create_variant(bg, fg, border)
    return {
        bg = bg,
        fg = fg,
        border = border,
    }
end

---@param config BlackAtom.Theme.UI.LayerConfig
---@return BlackAtom.Theme.UI.Layer
function M.create_layer(config)
    return {
        -- Base colors
        bg = config.bg,
        fg = config.fg,
        border = config.border,

        -- States
        accent = M.create_variant(config.accent, config.fg, config.border),
        muted = M.create_variant(config.bg, config.muted, config.border),
        contrast = M.create_variant(config.fg, config.bg, config.border),
        disabled = M.create_variant(config.bg, config.muted, config.border),
        cursor = M.create_variant(config.accent, config.bg, config.border),

        -- Selection
        visual = M.create_variant(config.accent, config.fg, config.border),
        search = M.create_variant(config.feedback.warn, config.bg, config.border),
        match = M.create_variant(config.accent, config.fg, config.border),

        -- Feedback
        error = M.create_variant(config.bg, config.feedback.error, config.border),
        warn = M.create_variant(config.bg, config.feedback.warn, config.border),
        info = M.create_variant(config.bg, config.feedback.info, config.border),
        hint = M.create_variant(config.bg, config.feedback.hint, config.border),
        success = M.create_variant(config.bg, config.feedback.success, config.border),

        -- Diff
        diff_add = M.create_variant(config.bg, config.diff.add, config.border),
        diff_delete = M.create_variant(config.bg, config.diff.delete, config.border),
        diff_modify = M.create_variant(config.bg, config.diff.modify, config.border),
        diff_text = M.create_variant(config.bg, config.diff.text, config.border),
    }
end

return M
