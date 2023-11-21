return {
  {
    "sindrets/diffview.nvim",
    -- event = "User AstroGitFile",
    event = "VeryLazy",
    cmd = { "DiffviewOpen" },
  },
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } },
  },
}
