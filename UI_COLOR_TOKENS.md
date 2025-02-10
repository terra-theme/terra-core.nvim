# UI Theme Token System

## Core Principles

1. **Layer-Based Organization**

    - Every UI element exists within a layer context
    - Layers define the visual hierarchy of the interface
    - Each layer maintains its own color variants for consistent contrast

2. **Atomic Variants**

    - Every variant must define both background (`bg`) and foreground (`fg`) colors
    - Borders are optional but follow the same pattern
    - Variants are always defined within their layer context

3. **Semantic Naming**

    - Names describe the purpose, not the appearance
    - Names should be clear and self-documenting
    - Examples: `ground`, `surface`, `accent` vs. "dark", "light", "primary"

4. **Platform Independence**
    - Theme definitions only handle colors
    - Style properties (bold, italic, etc.) are handled by platform-specific adapters
    - Makes the system portable across different platforms/implementations

## Structure

### Base Variant

```lua
---@class BlackAtom.Theme.UI.StateVariant
---@field bg string Background color
---@field fg string Foreground color
---@field border? string Optional border color
```

### Layers

Each layer contains its own set of variants to ensure proper contrast and color relationships.

```lua
---@class BlackAtom.Theme.UI
---@field ground BlackAtom.Theme.UI.Layer Deepest layer (sidebars)
---@field surface BlackAtom.Theme.UI.Layer Main content layer
---@field float BlackAtom.Theme.UI.Layer Floating elements
---@field sky BlackAtom.Theme.UI.Layer Highest layer
```

### Layer Variants

Each layer includes these variants:

#### States

- `accent` - Highlighted content
- `muted` - De-emphasized content
- `contrast` - Inverted areas
- `disabled` - Disabled elements
- `cursor` - Cursor indicators

#### Selection

- `visual` - Visual selections
- `search` - Search highlights
- `match` - Matching elements

#### Feedback

- `error` - Error indicators
- `warn` - Warning indicators
- `info` - Info indicators
- `hint` - Hint indicators
- `success` - Success indicators

#### Diff

- `diff_add` - Added content
- `diff_delete` - Deleted content
- `diff_modify` - Modified content
- `diff_text` - Diff text content

## Usage Examples

```lua
-- Default layer colors
ui.ground.bg                -- Ground layer background
ui.ground.fg                -- Ground layer foreground

-- Layer-specific variants
ui.ground.muted.fg          -- Muted text on ground layer
ui.float.error.fg           -- Error text in floating window
ui.surface.accent.fg        -- Accent text in main editor
```

### Real-World Example: File Tree

In a file explorer (like Neo-tree), different file states need different colorings while maintaining readability against the sidebar's background:

```lua
local highlights = {
    -- Sidebar background uses ground layer
    NeoTreeNormal = {
        bg = ui.ground.bg,
        fg = ui.ground.fg
    },

    -- Directory and file names use default ground foreground
    NeoTreeFileName = {
        fg = ui.ground.fg
    },

    -- Dimmed items (like ignored files) use muted variant
    NeoTreeDimText = {
        fg = ui.ground.muted.fg
    },

    -- Git modified files use the ground layer's diff_modify variant
    NeoTreeGitModified = {
        fg = ui.ground.diff_modify.fg
    },

    -- Selected items use accent variant
    NeoTreeTabActive = {
        bg = ui.ground.accent.bg,
        fg = ui.ground.accent.fg
    },

    -- Git conflict markers use error variant
    NeoTreeGitConflict = {
        fg = ui.ground.error.fg
    },
}
```

## Conclusion

This system ensures:

- Proper contrast by keeping variants within their layer context
- Consistent color relationships across the interface
- Clear and predictable color token naming
- Flexibility for different UI contexts while maintaining visual coherence
