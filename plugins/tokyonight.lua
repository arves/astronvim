return {
  "folke/tokyonight.nvim",
  config = function()
    -- Now we make telescope borderless
    require("tokyonight").setup({
      transparent = true,
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
      --   hl.TelescopeNormal = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
      --   hl.TelescopeBorder = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopeBorder = {
          bg = prompt,
          fg = prompt,
        }
      --   hl.TelescopePromptNormal = {
      --     bg = "none",
      --   }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
      --   hl.TelescopePromptBorder = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        }
      --   hl.TelescopePromptTitle = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = "#a4aed6",
        }
      --   hl.TelescopePreviewTitle = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopePreviewTitle = {
          bg = prompt,
          fg = "#a4aed6",
        }
      --   hl.TelescopeResultsTitle = {
      --     bg = "none",
      --     fg = "none",
      --   }
        hl.TelescopeResultsTitle = {
          bg = prompt,
          fg = "#a4aed6",
        }
      end,
    })
  end,
}
