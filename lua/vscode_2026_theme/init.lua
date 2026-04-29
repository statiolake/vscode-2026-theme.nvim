local palette = require("vscode_2026_theme.palette")
local highlights = require("vscode_2026_theme.highlights")

local M = {}

local config = {
  style = "vscode-2026",
}

local function normalize_style(style)
  if not style or style == "" then
    return config.style
  end
  return style
end

local function is_valid_style(style)
  return style == "vscode-2026" or style == "vscode-2026-dark" or style == "vscode-2026-light"
end

local function resolve_style(style)
  if style == "vscode-2026" then
    if vim.o.background == "light" then
      return "vscode-2026-light"
    end
    return "vscode-2026-dark"
  end
  return style
end

local function apply(groups)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.setup(opts)
  config = vim.tbl_deep_extend("force", config, opts or {})
end

function M.load(style)
  local normalized = normalize_style(style or vim.g.vscode_2026_theme_style)
  if not is_valid_style(normalized) then
    vim.notify(
      ("vscode-2026-theme.nvim: unknown style '%s', fallback to vscode-2026-dark"):format(normalized),
      vim.log.levels.WARN
    )
    normalized = "vscode-2026-dark"
  end

  local selected = resolve_style(normalized)
  local colors = palette[selected]
  if not colors then
    vim.notify(
      ("vscode-2026-theme.nvim: unknown style '%s', fallback to vscode-2026-dark"):format(selected),
      vim.log.levels.WARN
    )
    selected = "vscode-2026-dark"
    colors = palette[selected]
  end

  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = colors.background
  vim.g.colors_name = normalized == "vscode-2026" and "vscode-2026" or selected
  apply(highlights.build(colors))
end

return M
