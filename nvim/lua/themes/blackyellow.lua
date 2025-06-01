-- Clear all highlights first
vim.cmd("highlight clear")
vim.o.background = "dark"
vim.o.termguicolors = true

-- Main background black
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", fg = "#AAAA55" }) -- grayish yellow text

-- Cursor line, line numbers, statusline, etc
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111100" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#555500" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFF00" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000", fg = "#AAAA55" })

-- Syntax groups (gray and dark yellow)
vim.api.nvim_set_hl(0, "Comment", { fg = "#555500", italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = "#AAAA55" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#AAAA55" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#CCCC33" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#CCCC33" })
vim.api.nvim_set_hl(0, "Type", { fg = "#CCCC33" })
vim.api.nvim_set_hl(0, "Special", { fg = "#CCCC33" })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#CCCC33", underline = true })
vim.api.nvim_set_hl(0, "Error", { fg = "#FF5555", bold = true, bg = "#330000" })

-- More highlight tweaks here if you want, keep it black & dark yellow focused
