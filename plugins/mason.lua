-- customize mason plugins
local utils = require "astronvim.utils"
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(
      opts.ensure_installed, 
        {
          "pyright",
          "phpactor",
        }
      ) 
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(
        opts.ensure_installed, 
          { 
            "black", 
            "isort",
            "php-cs-fixer",
          }
        )
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(
        opts.ensure_installed, 
          {
            "php",
            "python",
          }
        )
      if not opts.handlers then opts.handlers = {} end
      opts.handlers.python = function() end -- make sure python doesn't get set up by mason-nvim-dap, it's being set up by nvim-dap-python
    end,
  },
}
