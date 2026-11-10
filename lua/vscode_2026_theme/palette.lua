-- Color values are derived from the upstream VS Code 2026 themes
-- (microsoft/vscode, MIT License, see LICENSE).
-- Semi-transparent UI colors are approximated to opaque equivalents
-- against the editor background.

local M = {
  ["vscode-2026-dark"] = {
    name = "vscode-2026-dark",
    background = "dark",
    bg = "#121314",
    bg_alt = "#191A1B",
    bg_float = "#202122",
    bg_popup = "#202122",
    bg_sidebar = "#191A1B",
    bg_statusline = "#191A1B",
    bg_visual = "#245C73",
    bg_search = "#1E4352",
    bg_cursorline = "#242526",
    bg_subtle = "#242526",
    -- Active selection in popups/menus: VS Code blends the accent
    -- (#3994BC) over the widget background; approximated opaque here so
    -- the selected row reads clearly against bg_float (#202122).
    sel = "#284450",
    border = "#2A2B2C",
    border_strong = "#333536",
    fg = "#BBBEBF",
    fg_default = "#BBBEBF",
    fg_syntax = "#c9d1d9",
    fg_alt = "#c9d1d9",
    fg_ui = "#8C8C8C",
    fg_muted = "#8b949e",
    fg_line_nr = "#858889",
    fg_punct = "#BBBEBF",
    keyword = "#ff7b72",
    parameter = "#ffa657",
    constant = "#79c0ff",
    number = "#79c0ff",
    string = "#a5d6ff",
    type = "#79c0ff",
    func = "#d2a8ff",
    tag = "#7ee787",
    accent = "#3994BC",
    heading = "#79c0ff",
    link = "#48A0C7",
    markdown_link_text = "#a5d6ff",
    markdown_bracket = "#79c0ff",
    info = "#3994BC",
    warn = "#e5ba7d",
    error = "#f48771",
    hint = "#79c0ff",
    debug = "#B267E6",
    diff_add = "#1c2c1c",
    diff_change = "#332218",
    -- The changed text inside a changed line: VS Code draws it as the
    -- line's tint again over the line's, so the same hue twice as strong.
    diff_text = "#54311c",
    diff_delete = "#341b1b",
    -- The changed text inside a deleted line, derived as diff_text is: the
    -- delete tint's step from the editor ground, doubled.
    diff_delete_text = "#562322",
  },
  ["vscode-2026-light"] = {
    name = "vscode-2026-light",
    background = "light",
    bg = "#FFFFFF",
    bg_alt = "#FAFAFD",
    -- VS Code uses #FAFAFD for widget/menu/suggest backgrounds and lifts
    -- them with a drop shadow over the #FFFFFF editor. Neovim has no
    -- shadow, so float/popup backgrounds are nudged a touch darker than
    -- the upstream #FAFAFD to stay distinct from Normal (#FFFFFF).
    bg_float = "#F2F2F6",
    bg_popup = "#F2F2F6",
    bg_sidebar = "#FAFAFD",
    bg_statusline = "#FAFAFD",
    bg_visual = "#BFD9F2",
    bg_search = "#FFF5B0",
    bg_cursorline = "#F0F0F3",
    bg_subtle = "#EAEAEA",
    -- Active selection in popups/menus: VS Code blends the accent
    -- (#0069CC) over the widget background; approximated opaque here so
    -- the selected row reads clearly against bg_float (#FFFFFF).
    sel = "#D6E6F7",
    border = "#E2E2E5",
    border_strong = "#D8D8D8",
    fg = "#202020",
    fg_default = "#202020",
    fg_syntax = "#1f2328",
    fg_alt = "#1f2328",
    fg_ui = "#606060",
    fg_muted = "#6e7781",
    fg_line_nr = "#606060",
    fg_punct = "#1f2328",
    keyword = "#cf222e",
    parameter = "#953800",
    constant = "#0550ae",
    number = "#0550ae",
    string = "#0a3069",
    type = "#0550ae",
    func = "#8250df",
    tag = "#116329",
    accent = "#0069CC",
    heading = "#0550ae",
    link = "#0069CC",
    markdown_link_text = "#0a3069",
    markdown_bracket = "#0550ae",
    info = "#0069CC",
    -- VS Code Light 2026's warning text (list.warningForeground), not its
    -- squiggle (#BF8803): the colour is read as text here — a warning's
    -- message, a notification, a dirty file's name — and #B69500 was
    -- 2.9:1 on the editor's white. This is 5.8:1 there, 5.2:1 on a float.
    warn = "#855F00",
    error = "#ad0707",
    hint = "#0550ae",
    debug = "#8250df",
    diff_add = "#dafbe1",
    diff_change = "#ffd8b5",
    diff_text = "#ffb16b",
    diff_delete = "#ffebe9",
    diff_delete_text = "#ffd7d3",
  },
}

return M
