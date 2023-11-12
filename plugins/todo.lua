return {
  "folke/todo-comments.nvim",
  lazy = false,
  event = "User AstroFile",
  dependencies = {
      "nvim-lua/plenary.nvim",
  },
  keys = {

      { "<leader>x" .. "t", "<cmd>TodoTrouble<cr>", desc = "Toggle todo (Trouble)" },
      { "<leader>f" .. "T", "<cmd>TodoTelescope<cr>", desc = "Toggle todo (Telescope)" },
  },
  opts = {
  },
}
