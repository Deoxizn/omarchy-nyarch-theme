-- nyarch — Quattro. Animated gradient border (signaldirective grand-theft-omarchy
-- pattern) + visual overrides. Border angle rotates on a loop, baby blue -> lavender.
--
-- NOTE: a theme installed from a git repo has its .lua dropped when
-- `omarchy theme set` stages it, so the animated border only applies on a
-- local/manual install, or by merging this file into your own hyprland.lua.
-- On a git install the same border colours live in colors.toml
-- (hyprland_active_border), which Omarchy renders into its own hyprland.lua
-- as a static gradient. See README.md.
hl.curve("linear_loop", {
  type = "bezier",
  points = { { 0, 0 }, { 1, 1 } },
})

hl.animation({
  leaf = "borderangle",
  enabled = true,
  speed = 20,
  bezier = "linear_loop",
  style = "loop",
})

local active_border_color = {
  colors = { "#7cc7e8", "#c084fc" },
  angle = 0,
}
local inactive_border_color = "rgba(2c394999)"

hl.config({
  general = { border_size = 2, gaps_in = 6, gaps_out = 12,
    col = { active_border = active_border_color,
            inactive_border = inactive_border_color } },
  group = { col = { border_active = active_border_color,
                       border_inactive = inactive_border_color } },
  decoration = { rounding = 12, dim_inactive = true, dim_strength = 0.10,
    blur = { enabled = true, size = 8, passes = 2 },
    shadow = { enabled = true, range = 16, render_power = 3, offset = "2 5",
      color = "rgba(12161acc)", color_inactive = "rgba(12161a88)" } },
})
