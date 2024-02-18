local Util = require("lazyvim.util")
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fF", Util.telescope("files"), desc = "Find files(root)" },
      { "<leader>ff", Util.telescope("files", { cwd = false }), desc = "Find files(cwd)" },
      -- find
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      -- add a keymap to browse plugin files
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fd",
        function()
          require("telescope.builtin").find_files({
            find_command = { "rg", "--files", "--hidden", "--glob", "!.*" },
          })
        end,
        desc = "Find Files (Ignore Dot Files)",
      },
    },
  },
}
