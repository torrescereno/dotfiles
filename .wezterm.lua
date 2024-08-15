local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaCove Nerd Font")
-- config.font = wezterm.font("Cascadia Code")

config.font_size = 14

config.color_scheme = "catppuccin-mocha"

-- config.window_decorations = "NONE"
config.enable_tab_bar = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 10,
	bottom = 0,
}

return config
