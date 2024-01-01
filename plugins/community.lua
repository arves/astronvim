return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.pack.typescript", enabled=true},
  { import = "astrocommunity.pack.python", enabled=true},
  {
    "venv-selector.nvim",
    opts = {},
	  keys = {{
      -- Keymap to open VenvSelector to pick a venv.
		  "<leader>vs", "<cmd>:VenvSelect<cr>",
		  -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		  "<leader>vc", "<cmd>:VenvSelectCached<cr>"
	  },},
  },
  { import = "astrocommunity.pack.bash", enabled=true},
  { import = "astrocommunity.pack.docker", enabled=true},
  { import = "astrocommunity.motion.flash-nvim", enabled=true},
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "<leader>j", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  { import = "astrocommunity.pack.json", enabled=true},
  { import = "astrocommunity.lsp.lsp-signature-nvim", enabled=true},
  { import = "astrocommunity.pack.markdown", enabled=true},
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim", enabled=true},
  { import = "astrocommunity.test.neotest", enabled=true},
  { import = "astrocommunity.test.nvim-coverage", enabled=true},
  { 
    "nvim-coverage",
    event = "VeryLazy",
    opts = {}
  },
  { import = "astrocommunity.git.diffview-nvim", enabled=true},
  { import = "astrocommunity.pack.php", enabled=true},
  { import = "astrocommunity.split-and-window.windows-nvim", enabled=true},
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled=true},
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
  },
  { import = "astrocommunity.editing-support.zen-mode-nvim", enabled=true},
  { import = "astrocommunity.color.twilight-nvim", enabled=true},
  { import = "astrocommunity.diagnostics.trouble-nvim", enabled=true},
  { import = "astrocommunity.editing-support.todo-comments-nvim", enabled=true},
  { import = "astrocommunity.motion.nvim-surround", enabled=true},
  { import = "astrocommunity.colorscheme.catppuccin", enabled=true},
  {
    "catppuccin",
    opts = { transparent_background = true},
  },
}
