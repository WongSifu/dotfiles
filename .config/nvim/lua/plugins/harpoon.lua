return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    keys = function()
      -- -- Harpoon
      -- local harpoon = require("harpoon")
      -- vim.keymap.set("n", "<leader>hh", function()
      --     harpoon.ui:toggle_quick_menu(harpoon:list())
      -- end, { desc = "Harpoon toggle" })
      --
      -- vim.keymap.set("n", "<leader>ha", function()
      --     harpoon:list():append()
      -- end, { desc = "Harpoon add" })
      --
      -- vim.keymap.set("n", "<leader>hn", function()
      --     harpoon:list():next()
      -- end, { desc = "Harpoon next" })
      --
      -- vim.keymap.set("n", "<leader>hp", function()
      --     harpoon:list():prev()
      -- end, { desc = "Harpoon prev" })
      local keys = {
        {
          "<leader>H",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon File",
        },
        {
          "<leader>h",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Quick Menu",
        },
      }
      return keys
    end,
  },
}
