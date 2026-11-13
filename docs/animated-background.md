# Animated backgrounds in nyarch

## What ships

| File | What it is |
|---|---|
| `backgrounds/2-archchan-hero-loop.mp4` | 10 s looping video of the hero still. Played natively by OWE in Omarchy 4.5. |
| `backgrounds/intros/0-archchan-hero.mp4` | 5 s intro clip. Plays on login and on theme switch, then settles on the still. |

## Loop specs

- Codec: H.264, `yuv420p`, `+faststart` (moov up front), no audio track.
- Resolution: 1248x704. Frame rate: 24 fps. Duration: 10 s. Size: ~4.8 MB.
- Under the 50 MiB per-file theme-registry limit, with room to spare.

## Using them

The loop appears in the background picker (`Super + Ctrl + W`) like any
background. Or set it directly:

```sh
omarchy theme bg set "$HOME/.config/omarchy/themes/nyarch/backgrounds/2-archchan-hero-loop.mp4"
```

The intro plays automatically and never loops. Disable intros under
Appearance > Animations, or `omarchy theme bg intro toggle`.

## The long-loop trick (HANCORE blackturq pattern)

OWE re-seeks at each loop point, which can hesitate on some machines. If the
10 s loop ever stutters at the seam, extend it into one long file so the
player only seeks once every couple of minutes:

```sh
ffmpeg -stream_loop 11 -i backgrounds/2-archchan-hero-loop.mp4 -c copy /tmp/nyarch-loop-long.mp4
```

That makes a ~2 minute file from the same 10 s loop. Don't ship the long
file in the repo; it's a local workaround, not an asset.

## Making more loops

Same recipe as this one: animate the still (petals, hair, glow, slow
push-in), export H.264 `yuv420p` at 24 fps, strip audio, add `+faststart`:

```sh
ffmpeg -i input.mp4 -c:v libx264 -pix_fmt yuv420p -crf 20 -an -movflags +faststart output.mp4
```

Keep loops under 50 MiB and pair each with a still first frame, so the lock
screen has something to show.
