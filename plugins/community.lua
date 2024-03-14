return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.test.nvim-coverage" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 1,
        width = function() return math.min(120, vim.o.columns * 0.75) end,
        height = 1,
        options = {
          number = false,
          relativenumber = true,
          foldcolumn = "0",
          list = false,
          showbreak = "NONE",
          signcolumn = "yes",
        },
      },
      plugins = {
        options = {
          cmdheight = 1,
          laststatus = 0,
          gitsigns = { enabled = false },
        },
      },
    },
  },
  { import = "astrocommunity.utility.noice-nvim", enabled = true },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
      presets = {
        -- you can enable a preset by setting it to true, or a table that will override the preset config
        -- you can also add custom presets that you can enable/disable with enabled=true
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
  },
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.pack.typescript", enabled=true},
  -- { import = "astrocommunity.pack.python-ruff", enabled=true},
  -- {
  --   "venv-selector.nvim",
  --   opts = {},
  --  keys = {{
  --     -- Keymap to open VenvSelector to pick a venv.
  --   "<leader>vs", "<cmd>:VenvSelect<cr>",
  --   -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  --   "<leader>vc", "<cmd>:VenvSelectCached<cr>"
  --  },},
  -- },
  -- { import = "astrocommunity.pack.bash", enabled=true},
  -- { import = "astrocommunity.pack.docker", enabled=true},
  -- { import = "astrocommunity.motion.flash-nvim", enabled=true},
  -- {
  --   "folke/flash.nvim",
  --   event = "VeryLazy",
  --   ---@type Flash.Config
  --   -- stylua: ignore
  --   opts = {},
  --   keys = {
  --     { "<leader>j", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  --     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  --     { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  --     { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  --     { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  --   },
  -- },
  -- { import = "astrocommunity.pack.json", enabled=true},
  -- { import = "astrocommunity.lsp.lsp-signature-nvim", enabled=true},
  -- { import = "astrocommunity.pack.markdown", enabled=true},
  -- { import = "astrocommunity.pack.tailwindcss", enabled=true},
  -- { import = "astrocommunity.test.neotest", enabled=true},
  -- { import = "astrocommunity.test.nvim-coverage", enabled=true},
  -- {
  --   "nvim-coverage",
  --   event = "VeryLazy",
  --   opts = {}
  -- },
  -- { import = "astrocommunity.git.diffview-nvim", enabled=true},
  -- { import = "astrocommunity.pack.php", enabled=true},
  -- { import = "astrocommunity.split-and-window.windows-nvim", enabled=true},
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled=true},
  -- {
  --   "HiPhish/rainbow-delimiters.nvim",
  --   event = "VeryLazy",
  -- },
  -- { import = "astrocommunity.diagnostics.trouble-nvim", enabled=true},
  -- { import = "astrocommunity.editing-support.todo-comments-nvim", enabled=true},
  -- { import = "astrocommunity.motion.nvim-surround", enabled=true},
  -- { import = "astrocommunity.utility.noice-nvim", enabled=true},
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     lsp = {
  --       hover = {
  --         enabled = false,
  --       },
  --       signature = {
  --         enabled = false,
  --       },
  --     },
  --     presets = {
  --       -- you can enable a preset by setting it to true, or a table that will override the preset config
  --       -- you can also add custom presets that you can enable/disable with enabled=true
  --       bottom_search = false, -- use a classic bottom cmdline for search
  --       command_palette = false, -- position the cmdline and popupmenu together
  --       long_message_to_split = true, -- long messages will be sent to a split
  --       inc_rename = false, -- enables an input dialog for inc-rename.nvim
  --       lsp_doc_border = false, -- add a border to hover docs and signature help
  --     },
  --   },
  -- },
  -- This one works nicely with noice
  -- { import = "astrocommunity.completion.cmp-cmdline", enabled=true},
  -- { import = "astrocommunity.colorscheme.tokyonight-nvim", enabled=true},
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     transparent = false,
  --   }
  -- }
  -- { import = "astrocommunity.colorscheme.catppuccin", enabled=true},
  -- {
  --   "catppuccin",
  --   opts = {
  --     transparent_background = true
  --   },
  -- },
}
