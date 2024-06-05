return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "clangd",
        "eslint-lsp",
        "golangci-lint-langserver",
        "gopls",
        "json-lsp",
        "lua-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        golangci_lint_ls = {
          init_options = {
            command = { "golangci-lint", "run", "--out-format", "json" },
          },
        },
      },
    },
  },
}
