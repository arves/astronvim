return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "folke/trouble.nvim",
    },
  },
  config = function(plugins, opts)
    local trouble = require "trouble.providers.telescope"
    -- Now we add our custom bindings for trouble
    opts.defaults.mappings.i["<c-o>"] = trouble.open_with_trouble
    opts.defaults.mappings.n["<c-o>"] = trouble.open_with_trouble
    require "plugins.configs.telescope"(plugins, opts)
  end,
}
