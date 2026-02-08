-- Pull in the wezterm API
local wezterm = require 'wezterm'


-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config = {
  default_prog = {"/usr/bin/fish", "-l"},
  automatically_reload_config = true,
  enable_wayland = true,
  -- enable_tab_bar = false,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  tab_max_width = 64,
  -- window_decorations = "INTEGRATED_BUTTONS|RESIZE",
  window_decorations = "NONE",
  -- default_cursor_style = "BlinkingBar",
  initial_cols = 120,
  initial_rows = 28,
  font_size = 11,
  enable_scroll_bar = true,
  -- color_scheme = "Tokyo Night",
  font = wezterm.font("JetBrains Mono"),
  window_frame = {
    border_left_width = '1cell',
    -- border_right_width = '1cell',
    -- border_bottom_height = '0.5cell',
    border_top_height = '0.5cell',
    border_left_color = '#1e1e2e',
    border_right_color = '#1e1e2e',
    border_bottom_color = '#1e1e2e',
    border_top_color = '#1e1e2e',
  },
  colors = {
    scrollbar_thumb = '#1e1e2e',
  },
  window_padding = {
    left = '1cell',
    right = '1cell',
    top = '0.5cell',
    bottom = '0cell',
  },
  background = {
    {
      source = {
        File = wezterm.home_dir .. "/.config/wezterm/backdrops/nord-space.png",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.00,
        -- brightness = 0.25,
        brightness = 0.05,
      },
      -- attachment = { Parallax = 0.3 },
      -- width = "100%",
      -- height = "100%",
    },
    {
      source = {
        Color = "#282c35",
      },
      width = "100%",
      height = "100%",
      -- opacity = 0.55,
      opacity = 0.75,
      -- opacity = 1,
    },
  },
}
-- Add datetime to the right side of the tab bar
-- wezterm.on("update-right-status", function(window, pane)
--   local date = wezterm.strftime("%a, %b %d %I:%M%P")
--   window:set_right_status(wezterm.format({
--     { Text = " " .. date .. " " },
--   }))
-- end)
-- config.colors = require("cyberdream")
-- Finally, return the configuration to wezterm:
return config
