return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {},
    },
  },
}
