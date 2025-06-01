-- lua/lsp.lua

local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Setup Mason (manages external LSP servers)
mason.setup()

-- Setup Mason LSPConfig to ensure servers are installed
local servers = {
  "pyright",       -- Python
  "rust_analyzer", -- Rust
  "clangd",        -- C/C++
  "ts_ls",         -- TypeScript/JavaScript (replacement for tsserver)
}

mason_lspconfig.setup {
  ensure_installed = servers,
}

-- LSP capabilities (for completion)
local capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Optional: on_attach function for keymaps or other LSP actions
local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  -- Example keybindings (you can expand these)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
end

-- Setup each LSP server
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
