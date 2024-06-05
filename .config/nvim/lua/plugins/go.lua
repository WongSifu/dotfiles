return {
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
            "leoluz/nvim-dap-go",
        },
        event = { "CmdlineEnter" },
        ft = { "go", "gomod" },
        build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
        config = function()
            require("go").setup({
                goimports = 'gopls',            -- goimports command, can be gopls[default] or either goimports or golines if need to split long lines
                gofmt = 'gopls',                -- gofmt through gopls: alternative is gofumpt, goimports, golines, gofmt, etc
                fillstruct = 'gopls',           -- set to fillstruct if gopls fails to fill struct
                max_line_len = 0,               -- max line length in golines format, Target maximum line length for golines
                tag_transform = "camelcase",    -- can be transform option("snakecase", "camelcase", etc) check gomodifytags for details and more options
                tag_options = 'json=omitempty', -- sets options sent to gomodifytags, i.e., json=omitempty
            })
            require("dap-go").setup({})

            -- Run gofmt + goimport on save
            local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*.go",
                callback = function()
                    require("go.format").goimport()
                end,
                group = format_sync_grp,
            })
        end,
        keys = {
            ["<leader>gf"] = { "<CMD>GoFillStruct<CR>", "Go Fill Struct" },
            ["<leader>gt"] = { "<CMD>GoAddTag<CR>", "Go Add Tag" },
            ["<leader>gct"] = { "<CMD>GoClearTag<CR>", "Go Clear Tag" },
            ["<leader>gac"] = { "<CMD>GoCmt<CR>", "Go Comment" },
            ["<leader>gg"] = { "<CMD>GoFmt<CR>", "Go Format" },
            ["<leader>gd"] = { "<CMD>GoDoc<CR>", "Go Doc" },
        }
    },
}
