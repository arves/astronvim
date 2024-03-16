return {
  "luisiacc/gruvbox-baby",
  config = function()
    vim.g.gruvbox_baby_transparent_mode = 1
    -- vim.g.gruvbox_baby_telescope_theme = 1
    require("notify").setup {
      background_colour = "#000000",
    }
  end,
}
