local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Cascadia Code")
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font_size = 11

return config

