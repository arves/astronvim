return {
  "nvim-telescope/telescope.nvim",
  lazy = true,
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable "make" == 1, build = "make",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
    },
  },
  cmd = "Telescope",
  opts = function()
    local actions = require "telescope.actions"
    local get_icon = require("astronvim.utils").get_icon
    local trouble = require("trouble.providers.telescope")
    return {
      defaults = {
        git_worktrees = vim.g.git_worktrees,
        prompt_prefix = get_icon("Selected", 1),
        selection_caret = get_icon("Selected", 1),
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = { prompt_position = "top", preview_width = 0.55 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
            i = { 
              ["<c-o>"] = trouble.open_with_trouble,
              ["<C-n>"] = actions.cycle_history_next,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
            n = {
              ["<c-o>"] = trouble.open_with_trouble,
              q = actions.close,
            },
          },
      },
    }
  end,
  config = require "plugins.configs.telescope",
}
