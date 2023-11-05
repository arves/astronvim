-- return {
  -- "nvim-treesitter/nvim-treesitter",
--   opts = function(_, opts)
--     -- add more things to the ensure_installed table protecting against community packs modifying it
--     opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
--       -- "lua"
--     })
--   end,
-- }
local utils = require "astronvim.utils"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(
          opts.ensure_installed, { 
            "php", 
            "python", 
            "toml",
          }
        )
      end
    end,
  },
}
