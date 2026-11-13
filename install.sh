#!/usr/bin/env bash
# nyarch — manual extras installer. Run once, after `omarchy theme install`.
# The theme itself needs no installer; this only does the privileged/optional bits.
#   ./install.sh --plymouth   set the Plymouth boot splash (sudo, rebuilds initramfs)
#   ./install.sh --apps       install Nyarch's weeb apps as Flatpaks (Komikku, Lollypop, Shortwave, Fragments)
#   ./install.sh --all        both of the above
set -euo pipefail

usage() {
  echo "usage: ./install.sh [--plymouth] [--apps] [--all]"
  echo "  --plymouth  omarchy plymouth set by theme nyarch (sudo, mkinitcpio rebuild)"
  echo "  --apps      flatpak install Komikku, Lollypop, Shortwave, Fragments"
  echo "  --all       both"
  exit 0
}

[[ $# -eq 0 ]] && usage

for arg in "$@"; do
  case "$arg" in
    --plymouth|--all)
      echo "==> Plymouth boot splash (needs sudo)..."
      omarchy plymouth set by theme nyarch
      ;;
    --apps|--all)
      echo "==> Nyarch apps (Flatpak)..."
      flatpak install -y flathub info.febvre.Komikku org.gnome.Lollypop \
        de.haeckerfelix.Shortwave de.haeckerfelix.Fragments
      ;;
    -h|--help) usage ;;
    *) echo "unknown option: $arg" >&2; usage ;;
  esac
done
echo "done."
