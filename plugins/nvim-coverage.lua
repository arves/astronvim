return {
  "andythigpen/nvim-coverage",
  lazy = true,
  event = "VeryLazy",
  opts = function(_, opts) 
    opts.commands = true
  end,
}
