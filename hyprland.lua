-- nyarch — Quattro. Limited visual overrides only.
-- Note: a theme installed from a git repo has its .lua dropped when
-- `omarchy theme set` stages it, so the border colours below also live in
-- colors.toml (hyprland_active_border), which Omarchy renders into its own
-- hyprland.lua. This file is for hand-installed copies and as the record
-- of what the theme intends.
hl.config({
  general = { border_size = 2, gaps_in = 6, gaps_out = 12,
    col = { active_border = { colors = { "rgba(7cc7e8ff)", "rgba(4da3d8ff)" }, angle = 45 },
            inactive_border = "rgba(2c394999)" } },
  group = { col = { border_active = { colors = { "rgba(7cc7e8ff)", "rgba(4da3d8ff)" }, angle = 45 },
                       border_inactive = "rgba(2c394999)" } },
  decoration = { rounding = 12, dim_inactive = true, dim_strength = 0.10,
    blur = { enabled = true, size = 8, passes = 2 },
    shadow = { enabled = true, range = 16, render_power = 3, offset = "2 5",
      color = "rgba(12161acc)", color_inactive = "rgba(12161a88)" } },
})
