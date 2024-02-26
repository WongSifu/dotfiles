-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local opts = { noremap = true, silent = true }

-- my fav
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- Paste
vim.keymap.set("x", "<leader>p", [["_dP]], { noremap = true, silent = true, desc = "paste" })

-- Up/Down then center
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "down center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "up center" })
