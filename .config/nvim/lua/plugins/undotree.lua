return {
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set(
        "n",
        "<leader>z",
        vim.cmd.UndotreeToggle,
        { noremap = true, silent = true, desc = "Toggle Undo Tree" }
      )
    end,
  },
}
