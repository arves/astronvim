return {
  "ray-x/lsp_signature.nvim",
  lazy = true,
  event = "VeryLazy",
  opts = {},
  config = function(_, opts) require'lsp_signature'.setup(opts) end
}
