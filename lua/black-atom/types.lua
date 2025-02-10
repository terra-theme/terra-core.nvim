-- vim: set colorcolumn=64:

---@alias BlackAtom.Theme.Key
---| "black-atom-engineering"
---| "black-atom-operations"
---| "black-atom-medical"
---| "black-atom-research"
---| "black-atom-jpn-koyo-yoru"
---| "black-atom-jpn-koyo-hiru"
---| "black-atom-jpn-tsuki-yoru"
---| "black-atom-mono-one-dark"
---| "black-atom-crbn-null"
---| "black-atom-crbn-supr"
---| "terra-spring-day"
---| "terra-spring-night"
---| "terra-fall-day"
---| "terra-fall-night"
---| "terra-summer-day"
---| "terra-summer-night"
---| "terra-winter-day"
---| "terra-winter-night"

---@alias BlackAtom.Theme.Collection.Key
---| "default"
---| "terra"
---| "jpn"
---| "mono"
---| "crbn"

---@class BlackAtom.HighlightDefinition
---@field fg?                                                   string
---@field bg?                                                   string
---@field sp?                                                   string
---@field bold?                                                 boolean
---@field italic?                                               boolean
---@field blend?                                                integer
---@field standout?                                             boolean
---@field underline?                                            boolean
---@field undercurl?                                            boolean
---@field underdouble?                                          boolean
---@field underdotted?                                          boolean
---@field underdashed?                                          boolean
---@field strikethrough?                                        boolean
---@field reverse?                                              boolean
---@field link?                                                 string

---@alias BlackAtom.Highlights                                  table<string, BlackAtom.HighlightDefinition>

---@alias BlackAtom.HighlightMapExtension.map                   fun(colors: BlackAtom.Theme.Colors, config: BlackAtom.Config): BlackAtom.Highlights

---@class BlackAtom.HighlightsSpec
---@field enabled?                                              boolean Default: true
---@field map                                                   BlackAtom.HighlightMapExtension.map

---@class BlackAtom.Theme.Primaries                             string[]

---@class BlackAtom.Theme.Palette
---@field black                                                 string
---@field gray                                                  string
---@field dark_red                                              string
---@field red                                                   string
---@field dark_green                                            string
---@field green                                                 string
---@field dark_yellow                                           string
---@field yellow                                                string
---@field dark_blue                                             string
---@field blue                                                  string
---@field dark_magenta                                          string
---@field magenta                                               string
---@field dark_cyan                                             string
---@field cyan                                                  string
---@field light_gray                                            string
---@field white                                                 string

---@class BlackAtom.Theme.UI.Variant
---@field bg string
---@field fg string
---@field border? string

---@class BlackAtom.Theme.UI.StateVariant
---@field bg string                                             Background color for this state
---@field fg string                                             Foreground color for this state
---@field border? string                                        Optional border color

---@class BlackAtom.Theme.UI.Layer
---@field bg string                                             Default background
---@field fg string                                             Default foreground
---@field border? string                                        Optional border
---@field accent BlackAtom.Theme.UI.StateVariant                Highlighted content
---@field muted BlackAtom.Theme.UI.StateVariant                 De-emphasized content
---@field contrast BlackAtom.Theme.UI.StateVariant              Inverted areas
---@field disabled BlackAtom.Theme.UI.StateVariant              Disabled elements
---@field visual BlackAtom.Theme.UI.StateVariant                Visual selections
---@field search BlackAtom.Theme.UI.StateVariant                Search highlights
---@field match BlackAtom.Theme.UI.StateVariant                 Matching elements
---@field error BlackAtom.Theme.UI.StateVariant                 Error indicators
---@field warn BlackAtom.Theme.UI.StateVariant                  Warning indicators
---@field info BlackAtom.Theme.UI.StateVariant                  Info indicators
---@field hint BlackAtom.Theme.UI.StateVariant                  Hint indicators
---@field success BlackAtom.Theme.UI.StateVariant               Success indicators
---@field diff_add BlackAtom.Theme.UI.StateVariant              Added content
---@field diff_delete BlackAtom.Theme.UI.StateVariant           Deleted content
---@field diff_modify BlackAtom.Theme.UI.StateVariant           Modified content
---@field diff_text BlackAtom.Theme.UI.StateVariant             Diff text content

---@class BlackAtom.Theme.UI
---@field ground BlackAtom.Theme.UI.Layer                       Darkest/deepest layer (e.g. Sidebar, Statusline)
---@field surface BlackAtom.Theme.UI.Layer                      Main elements layer (e.g. Editor)
---@field float BlackAtom.Theme.UI.Layer                        Floating elements layer (e.g. Popups, Overlays, Dropdowns)
---@field sky BlackAtom.Theme.UI.Layer                          Highest layer for temporary elements (e.g. Notifications, Tooltips)

---@class BlackAtom.Theme.Syntax.Markup
---@field heading                                               { h1: string, h2: string, h3: string, h4: string, h5: string, h6: string }
---@field quote                                                 string
---@field math                                                  string
---@field link                                                  string
---@field code                                                  { fg: string, bg: string }
---@field list                                                  { default: string, checked: string, unchecked: string }

---@class BlackAtom.Theme.Syntax
---@field variable                                              { default: string, builtin: string, parameter: string, member: string }
---@field string                                                { default: string, documentation: string, regexp: string, escape: string }
---@field boolean                                               { default: string }
---@field number                                                { default: string }
---@field property                                              { default: string }
---@field constant                                              { default: string, builtin: string }
---@field module                                                { default: string }
---@field type                                                  { default: string, builtin: string }
---@field attribute                                             { default: string, builtin: string }
---@field func                                                  { default: string, builtin: string, method: string }
---@field constructor                                           { default: string }
---@field operator                                              { default: string }
---@field keyword                                               { default: string, import: string, export: string }
---@field punctuation                                           { default: string, delimiter: string, bracket: string, special: string }
---@field comment                                               { default: string, doc: string, todo: string, error: string, warn: string, info: string, hint: string }
---@field tag                                                   { default: string, builtin: string, delimiter: string, attribute: string }
---@field markup                                                BlackAtom.Theme.Syntax.Markup

---@class BlackAtom.Theme.Colors
---@field none                                                  "NONE"
---@field primaries                                             BlackAtom.Theme.Primaries
---@field palette                                               BlackAtom.Theme.Palette
---@field ui                                                    BlackAtom.Theme.UI
---@field syntax                                                BlackAtom.Theme.Syntax

---@class BlackAtom.Theme.Meta
---@field key                                                   BlackAtom.Theme.Key
---@field label                                                 string Display name
---@field collection                                            { key: BlackAtom.Theme.Collection.Key, label: string }
---@field appearance                                            "light" | "dark"
---@field status                                                "development" | "beta" | "release" Status of the theme
---@field icon                                                  string Icon to display in the UI

---@class BlackAtom.Theme.Definition
---@field colors                                                BlackAtom.Theme.Colors
---@field meta                                                  BlackAtom.Theme.Meta

---@class BlackAtom.Config.SyntaxStyle
---@field comments?                                             BlackAtom.HighlightDefinition
---@field keywords?                                             BlackAtom.HighlightDefinition
---@field functions?                                            BlackAtom.HighlightDefinition
---@field strings?                                              BlackAtom.HighlightDefinition
---@field variables?                                            BlackAtom.HighlightDefinition
---@field messages?                                             BlackAtom.HighlightDefinition

---@class BlackAtom.Config.Diagnostics
---@field undercurl?                                            boolean Wether to use undercurls for diagnostics (Default: false)
---@field background?                                           boolean Wether to use background color for virtual text (Default: false)

---@class BlackAtom.Config.Styles
---@field cmp_kind_color_mode?                                  "fg" | "bg" (Default: "fg")
---@field dark_sidebars?                                        boolean Wether to use dark sidebars (Default: true)
---@field transparency?                                         "full" | "partial" | "none" Transparency level (Default: "none")
---@field diagnostics?                                          BlackAtom.Config.Diagnostics Diagnostics related settings (Default: See Documentation)
---@field syntax?                                               BlackAtom.Config.SyntaxStyle Syntax styling options (Default: See Documentation)
---@field ending_tildes?                                        boolean Wether to show the end-of-buffer tildes (Default: false)

---@class BlackAtom.Config
---@field debug?                                                boolean Enables the Debug Mode (Enables various debug messages) (Default: false)
---@field theme?                                                BlackAtom.Theme.Key
---@field collection?                                           BlackAtom.Theme.Collection.Key
---@field term_colors?                                          boolean Wether to enable terminal colors (Default: true)
---@field styles?                                               BlackAtom.Config.Styles Various styles related settings (Default: See Documentation)
