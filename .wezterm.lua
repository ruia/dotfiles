local wezterm = require 'wezterm'

local config = {
  window_background_opacity = 0.9,
  initial_cols = 120,

  hide_tab_bar_if_only_one_tab = true,
  -- integrated_title_buttons_style = "Gnome"
  font = wezterm.font_with_fallback({
    'SauceCode Pro Nerd Font',
    'Source Code Pro',
    'JetBrainsMono Nerd Font',
    'Hack Nerd Font Mono',
  }),
  font_size = 11
}

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '-',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '+',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CTRL|ALT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
}

return config
-- config.keys =



-- return {
--     window_background_opacity = 0.9,
--     initial_cols = 100,

--     hide_tab_bar_if_only_one_tab = true,
--     -- integrated_title_buttons_style = "Gnome"
--     font = wezterm.font('Source Code Pro'),
--     font_size = 11,

--     keys = {
--       {
--         key = '+',
--         mods = 'SHIT|ALT',
--         action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
--       },
--     },

-- }
-- local config = wezterm.config_builder()
-- config.window_background_opacity = 0.90
-- -- config.enable_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true

-- return config
