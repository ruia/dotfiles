local wezterm = require 'wezterm'

return {
  window_background_opacity = 0.9,
  initial_cols = 120,
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changint_font_size = false,

  font = wezterm.font_with_fallback({
    'SauceCode Pro Nerd Font',
    'Source Code Pro',
    'JetBrainsMono Nerd Font',
    'Hack Nerd Font Mono',
  }),
  font_size = 11,

  keys = {
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
}