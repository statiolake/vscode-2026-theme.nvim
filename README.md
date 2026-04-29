# vscode-2026-theme.nvim

`vscode-2026-theme.nvim` is a Neovim port of the **2026 Dark** and **2026 Light**
default themes shipped with [Visual Studio Code](https://github.com/microsoft/vscode):

- `vscode-2026` (auto switch by `:set background=dark|light`)
- `vscode-2026-dark`
- `vscode-2026-light`

Tree-sitter highlight captures are supported out of the box.
`vscode-2026-dark` / `vscode-2026-light` are fixed variants, while
`vscode-2026` tracks `background`.

## Install

Example with `lazy.nvim`:

```lua
{
  "statiolake/vscode-2026-theme.nvim",
  priority = 1000,
}
```

## Usage

```lua
vim.o.background = "dark"
vim.cmd.colorscheme("vscode-2026") -- loads vscode-2026-dark

vim.o.background = "light"
vim.cmd.colorscheme("vscode-2026") -- loads vscode-2026-light
-- after loading "vscode-2026", changing :set background=... auto-switches too
```

Optional configuration:

```lua
require("vscode_2026_theme").setup({
  style = "vscode-2026", -- "vscode-2026" | "vscode-2026-dark" | "vscode-2026-light"
})
```

## Plugin Support

Common groups are themed for:

- `copilot.vim` (`CopilotSuggestion`)
- LSP / diagnostics (`Lsp*`, `Diagnostic*`)
- `blink.cmp` (`BlinkCmp*`)
- `snacks.nvim` (`SnacksPicker*`, `SnacksInput*`, `SnacksNotifier*`, `SnacksIndent*`, `SnacksDashboard*`)
- `nvim-cmp`
- `telescope.nvim` (legacy compatibility)
- `nvim-tree.lua` / `neo-tree.nvim`
- `which-key.nvim`
- `trouble.nvim`
- `ibl` / `indent-blankline.nvim`

## License

MIT.

The color values in this repository are derived from the **2026 Dark** and
**2026 Light** themes shipped with VS Code (`microsoft/vscode`, MIT License).
The upstream MIT license text is preserved verbatim in
[`LICENSE-VSCODE.txt`](./LICENSE-VSCODE.txt). The combined copyright notice
covering both upstream Microsoft Corporation and the Lua port author
(`statiolake`) is in [`LICENSE`](./LICENSE).
