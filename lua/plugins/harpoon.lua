return {
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    branch = "harpoon2",
    cmd = { "Harpoon" },
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():append()
        end,
        desc = "Harpoon Add file",
      },
      {
        "<C-e>",
        function()
          require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
        end,
        desc = "Toggle quick menu",
      },
      {
        "<M-j>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Nav file 1",
      },
      {
        "<M-k>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Nav file 2",
      },
      {
        "<M-l>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Nav file 3",
      },
    },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup({
        settings = {
          save_on_toggle = true,
          sync_on_ui_close = true,
        },
      })
    end,
  },
}
