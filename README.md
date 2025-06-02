# ⚡ Neovim Custom Black & Yellow Setup

A minimalist and high-performance Neovim configuration using Lua, built for fast development across multiple languages (C, C++, Rust, Python, JavaScript). Powered by [LazyVim](https://github.com/LazyVim/LazyVim) for plugin management.

---

## 🎨 Theme

* **Primary:** Black
* **Accent:** Dark Yellow
* Custom theme located in: `lua/themes/blackyellow.lua`

---

## 🔌 Plugins Used

All plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim).

| Category            | Plugin(s)                                                                               |
| ------------------- | --------------------------------------------------------------------------------------- |
| Plugin Manager      | `folke/lazy.nvim`                                                                       |
| File Finder         | `nvim-telescope/telescope.nvim`, `nvim-lua/plenary.nvim`                                |
| File Explorer       | `nvim-neo-tree/neo-tree.nvim`                                                           |
| LSP Support         | `neovim/nvim-lspconfig`, `williamboman/mason.nvim`, `williamboman/mason-lspconfig.nvim` |
| Autocompletion      | `hrsh7th/nvim-cmp`, `hrsh7th/cmp-nvim-lsp`, `L3MON4D3/LuaSnip`                          |
| Syntax Highlighting | `nvim-treesitter/nvim-treesitter`                                                       |
| Statusline          | `nvim-lualine/lualine.nvim`                                                             |
| Performance Boost   | `lewis6991/impatient.nvim`                                                              |

---

## 🧠 Language Support

Via Mason + LSPConfig

* C / C++
* Python
* Rust
* JavaScript (configured using `tsserver` or `tsserver_ls`)

---

## ⌨️ Keybindings

| Action                    | Mode   | Keybinding    |
| ------------------------- | ------ | ------------- |
| **Telescope File Finder** | Normal | `Alt + t`     |
| **Toggle NeoTree**        | Normal | `Alt + q`     |
| **Exit NeoTree**          | Normal | `Alt + q`     |
| **Quit Neovim**           | Normal | `:q` or `:qa` |
| **Save File**             | Normal | `:w`          |

---

## 📂 Project Structure

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── plugins.lua         # All plugin setup
│   ├── keymaps.lua         # Key mappings
│   ├── lsp.lua             # LSP and mason config
│   ├── themes/
│   │   └── blackyellow.lua # Custom colorscheme
```

---

## 🚀 Getting Started

```bash
git clone https://github.com/Kaiamaterasu/my-nvim.git ~/.config/nvim
nvim
```

Inside Neovim:

```
:Mason
```

Install required LSP servers.

---

## 🙏 Credits

* [LazyVim](https://github.com/LazyVim/LazyVim) - plugin management architecture
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

> 💻 Designed for a distraction-free coding experience with high visibility.
