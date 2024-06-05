-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for go files
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     pattern = { "go" },
--     callback = function()
--         vim.b.autoformat = false
--     end,
-- })

-- Run gofmt + goimport on save
-- local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*.go",
--     callback = function()
--         require("go.format").goimport()
--     end,
--     group = format_sync_grp,
-- })

-- JQ
-- vim.cmd([[au BufRead,BufNewFile *.jq setfiletype jq]])
