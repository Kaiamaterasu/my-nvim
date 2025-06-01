-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Performance
  "lewis6991/impatient.nvim",

  -- Colorscheme
  -- (No external theme, using your custom blackyellow)

  -- Treesitter for syntax parsing
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "c", "cpp", "rust", "python", "javascript" },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },

  -- LSP management & config
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },

  -- Telescope fuzzy finder (files only)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- NeoTree file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { 
      "nvim-lua/plenary.nvim", 
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim" 
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
      })
    end,
  },

  -- Run code (iron.nvim)
  {
    "hkupty/iron.nvim",
    config = function()
      local iron = require("iron.core")

      iron.setup {
        config = {
          repl_definition = {
            python = { command = {"ipython"} },
            lua = { command = {"lua"} },
            c = { command = {"zsh"} }, -- adjust as needed
            cpp = { command = {"zsh"} },
            rust = { command = {"zsh"} },
            javascript = { command = {"node"} },
          },
          repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
        },
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>si",
          exit = "<space>sq",
          clear = "<space>cl",
        },
      }
    end,
  },
})
