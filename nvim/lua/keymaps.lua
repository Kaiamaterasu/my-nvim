local opts = { noremap = true, silent = true }

-- Telescope file finder (Alt+t)
vim.keymap.set("n", "<M-t>", "<cmd>Telescope find_files<CR>", opts)

-- NeoTree toggle (Alt+q)
vim.keymap.set("n", "<M-q>", "<cmd>Neotree toggle<CR>", opts)

-- Optional: Exit NeoTree with Alt+q too
vim.keymap.set("t", "<M-q>", "<cmd>Neotree close<CR>", opts)

-- Basic keymaps
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)  -- extra toggle

-- Iron keymaps (run code)
-- You can expand or customize these if you want:
vim.keymap.set("n", "<space>sf", "<cmd>IronSendFile<CR>", opts)
vim.keymap.set("n", "<space>sl", "<cmd>IronSendLine<CR>", opts)
vim.keymap.set("n", "<space>sc", "<cmd>IronSend<CR>", opts)
