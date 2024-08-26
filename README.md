# 🚧 &nbsp;Development Status: ALPHA &nbsp;🚧</p>

This theme is in an early development phase.

Structure, colors and things can (and will) change.

This is all a work in progress.

**Current usage is not recommended.**

---

# Black Atom for Neovim

This is logic core for Neovim themes by Black Atom Industries.
It will receive theme definitions from outside and apply them to the editor.

## Installation

Install the plugin with your favourite package manager. 
Example with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
---@type LazyPluginSpec
return {
    "black-atom-industries/nvim",
    name = "black-atom",
    priority = 1000,
    ---@module "black-atom"
    ---@type BlackAtom.Config
    opts = {},
}
```

## Development

### Linting

```bash
luacheck .
```

### Formatting

Format whole project with `stylua`.

```bash
stylua lua/**/*.lua
```
