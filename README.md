# omarchy-nyarch-theme

Nyarch Linux, as an Omarchy theme. Quattro / 4.5.

The meme distro, minus the distro: baby blue on black, after the Nyarch
Assistant / Arch-chan art. Near-black UI, navy surfaces, pale baby-blue
foreground, bright blue trim. Waifu wallpapers included, animated ones too.

Inspired by [Nyarch Linux](https://nyarchlinux.moe/). Not affiliated with
Nyarch Linux, Arch Linux, or Omarchy. All wallpapers and the logo in this
repo are original art made for this theme, not Nyarch's assets and not
scraped fan art.

## Install

```sh
omarchy theme install https://github.com/Deoxizn/omarchy-nyarch-theme
omarchy theme set nyarch
```

Or by hand:

```sh
git clone https://github.com/Deoxizn/omarchy-nyarch-theme ~/.config/omarchy/themes/nyarch
omarchy theme set nyarch
```

## What's in it

| File | What it does |
|---|---|
| `colors.toml` | The whole palette. Baby blue `#7cc7e8` accent on `#12161a` black. Drives terminals, Hyprland, btop, and the Quickshell shell. |
| `backgrounds/0-archchan-hero.jpg` | Hero still: catgirl under a pale blue moon, neon city, sakura. |
| `backgrounds/1-neko-rooftop.jpg` | Second still: rooftop, laptop, neon city. |
| `backgrounds/2-archchan-hero-loop.mp4` | Animated version of the hero. 10 s loop, played natively by OWE in Omarchy 4.5. Pick it in the background picker (`Super + Ctrl + W`). |
| `backgrounds/intros/0-archchan-hero.mp4` | Theme intro: plays on login and on theme switch, then settles on the still. |
| `unlock.png` | Cat-ear star logo. Lock-screen badge and the Plymouth boot logo. |
| `hyprland.lua` / `hyprland.conf` | Baby-blue gradient active borders, 12 px rounding, blur, shadow. The `.lua` is dropped by `omarchy theme set` for git-installed themes, so the same border lives in `colors.toml` as `hyprland_active_border` and Omarchy renders it into its own `hyprland.lua`. |
| `shell.toml` | Full Quickshell shell treatment: bar, popups, launcher, menu, notifications, lock. |
| `.omarchy-theme.yml` | Gallery listing: `gallery: true`, category `novelty`. |
| `shell.lock.toml` | Lock-screen colors. |
| `btop.theme`, `icons.theme`, `keyboard.rgb` | btop colors, Yaru-blue icons, baby-blue keyboard RGB. |

Cycle stills with `Super + Ctrl + Space`. Disable intros under
Appearance > Animations, or `omarchy theme bg intro toggle`.

## Boot splash (Plymouth)

Omarchy themes can't set the boot splash on install, it needs sudo and an
initramfs rebuild. One manual step, or run the installer script:

```sh
omarchy plymouth set by theme nyarch
# or
./install.sh --plymouth
```

Preview it first with `omarchy plymouth preview`. Switching away from the
theme does not undo the boot splash; `omarchy plymouth reset` restores the
default.

## The Nyarch apps, Omarchy-style

A theme can't install apps or a Customize GUI, so this is the closest
equivalent: the weeb apps Nyarch ships, as Flatpaks you can add yourself.

```sh
flatpak install flathub info.febvre.Komikku       # manga / webtoon reader
flatpak install flathub org.gnome.Lollypop        # music player
flatpak install flathub de.haeckerfelix.Shortwave # webradio, incl. listen.moe
flatpak install flathub de.haeckerfelix.Fragments # torrent client
```

Or all of it, plus the boot splash:

```sh
./install.sh --all
```

`extras/nyarch-fetch` is the theme's stand-in for Nyarch's Catgirl / Waifu
Downloader: it pulls SFW waifu art from waifu.im (`is_nsfw=false`, SFW tags
only) into `~/.config/omarchy/backgrounds/nyarch/`, so the picker gains
fresh wallpapers without anything NSFW or unlicensed ever landing in the
repo.

```sh
./extras/nyarch-fetch waifu 5
./extras/nyarch-fetch maid 5
```

## Palette

| Role | Hex |
|---|---|
| Background | `#12161a` |
| Dark / darker | `#0d1114` / `#090c0e` |
| Surface | `#1c2329` |
| Navy | `#2c3949` |
| Foreground | `#d6e8ec` |
| Accent (baby blue) | `#7cc7e8` |
| Blue | `#4da3d8` |
| Pale blue | `#c6e2e3` |
| Lavender | `#c084fc` |
| Red | `#ff5c7a` |

## Notes

- Model theme: [OldJobobo's Bloom Protocol](https://github.com/OldJobobo/omarchy-bloom-protocol-theme), the current 4.5 reference. Nyarch follows its layout: expanded `colors.toml`, `hyprland.lua` + `hyprland.conf`, full `shell.toml`, `.omarchy-theme.yml`.

- "Quattro" is Omarchy 4.0's codename, not four theme variants. This is one
  theme for Quattro / Quattro RS (4.5).
- Nyarch itself has no fixed palette; its Material UwU theming generates
  colors from the wallpaper. This palette is frozen from the Nyarch
  Assistant art, baby blue on black, and labeled as such.
- The Arch logo is trademarked and Nyarch's cat-eared variant inherits
  that, so the logo here is an original cat-ear star mark, not theirs.
- No `neovim.lua` / `vscode.json` are shipped on purpose: Omarchy strips
  those from git-installed themes and regenerates them from `colors.toml`.

## License

MIT. See `LICENSE`.
