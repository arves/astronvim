local fg_dark = "#504945"
local fg_title = "#a6e3a1"
local bg_light = "#181825"
local bg_dark = "#181825"
return { -- this table overrides highlights in all themes
  CursorLine = { bg = "none" },
  TabLine = { bg = "none" },
  NotifyBackground = { bg = "#000000" },

  -- Custom telescope adjusted for gruvbox
  -- TelescopeNormal = { bg = bg_dark, fg = fg_dark },
  TelescopeNormal = { bg = bg_light, fg = fg_dark },
  TelescopePromptNormal = {
    bg = bg_dark,
  },
  TelescopePromptBorder = {
    bg = bg_dark,
    fg = bg_dark,
  },
  TelescopePromptTitle = {
    bg = bg_dark,
    fg = fg_title,
  },
  TelescopePreviewTitle = {
    bg = bg_light,
    fg = fg_title,
  },
  TelescopePreviewBorder = {
    bg = bg_light,
    fg = bg_light,
  },
  TelescopePreviewNormal = {
    bg = bg_light,
  },
  TelescopeResultsTitle = {
    bg = bg_dark,
    fg = fg_title,
  },
  TelescopeResultsBorder = {
    bg = bg_dark,
    fg = bg_dark,
  },
  TelescopeResultsNormal = {
    bg = bg_dark,
  },
  StatusLine = { bg = "none" },
}
