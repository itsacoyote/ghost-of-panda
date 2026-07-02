# 🐼 Ghost of Panda

A [Ghostty](https://ghostty.org) terminal theme that faithfully recreates the
[**Panda**](https://github.com/PandaTheme) color palette — the beloved "superminimal, dark"
theme that is no longer actively maintained and never shipped a Ghostty port.

The name is a play on words: **Ghost**ty + **Panda**. This is an independent, unaffiliated
tribute so the Panda look lives on in Ghostty.

![License: MIT](https://img.shields.io/badge/license-MIT-19F9D8)

---

## Preview

Panda is a warm, dark theme built around a soft charcoal background with vivid pink, teal,
and orange accents.

| | Color | Hex |
|---|---|---|
| Background | charcoal | `#292A2B` |
| Foreground | off-white | `#E6E6E6` |
| Accent | pink/red | `#FF2C6D` |
| Accent | teal/green | `#19F9D8` |
| Accent | orange | `#FFB86C` |
| Accent | blue | `#45A9F9` |
| Accent | pink | `#FF75B5` |

> A real terminal screenshot is on the to-do list — contributions welcome.

### Quick install — just the theme file

```bash
mkdir -p ~/.config/ghostty/themes
curl -fLo ~/.config/ghostty/themes/ghost-of-panda \
  https://raw.githubusercontent.com/itsacoyote/ghost-of-panda/main/themes/ghost-of-panda
```

### Or clone the repo

```bash
git clone https://github.com/itsacoyote/ghost-of-panda.git
mkdir -p ~/.config/ghostty/themes
cp ghost-of-panda/themes/ghost-of-panda ~/.config/ghostty/themes/
```

> On Linux, Ghostty also reads themes from `$XDG_CONFIG_HOME/ghostty/themes` when `XDG_CONFIG_HOME` is set.

### Enable it

Add this line to your Ghostty config at `~/.config/ghostty/config` (create the file if it
doesn't exist yet):

```
theme = ghost-of-panda
```

Then reload your config with <kbd>⌘</kbd>+<kbd>⇧</kbd>+<kbd>,</kbd> on macOS (or restart Ghostty).

That's it — your terminal now wears Panda.

## Palette

The full ANSI mapping, taken from Panda's canonical palette (the values used by the
flagship Panda editor themes).

| Slot | Role | Hex | | Slot | Role | Hex |
|---:|---|---|---|---:|---|---|
| 0 | black | `#292A2B` | | 8 | bright black | `#676B79` |
| 1 | red | `#FF2C6D` | | 9 | bright red | `#FF2C6D` |
| 2 | green | `#19F9D8` | | 10 | bright green | `#19F9D8` |
| 3 | yellow | `#FFB86C` | | 11 | bright yellow | `#FFCC95` |
| 4 | blue | `#45A9F9` | | 12 | bright blue | `#6FC1FF` |
| 5 | magenta | `#FF75B5` | | 13 | bright magenta | `#FF9AC1` |
| 6 | cyan | `#6FC1FF` | | 14 | bright cyan | `#6FC1FF` |
| 7 | white | `#E6E6E6` | | 15 | bright white | `#FFFFFF` |

| UI element | Hex |
|---|---|
| `background` | `#292A2B` |
| `foreground` | `#E6E6E6` |
| `cursor-color` | `#E6E6E6` |
| `cursor-text` | `#292A2B` |
| `selection-background` | `#676B79` |
| `selection-foreground` | `#E6E6E6` |

### Notes on the palette

- **No true cyan.** Panda's palette has no dedicated cyan, so the cyan slots (6 and 14)
  reuse Panda's light blue `#6FC1FF`, matching how Panda's own terminal ports handled it.
  (Bright blue, slot 12, is also `#6FC1FF` — Panda's light blue doubling as bright blue.)
- **A more saturated Panda exists.** Panda's official iTerm port uses a darker, more
  saturated interpretation (background `#1D1E20`, red `#FB055A`). Ghost of Panda instead
  follows the canonical *editor* palette, which is the look most people associate with Panda.
- Every value is a plain hex color — tweak any slot in `themes/ghost-of-panda` to taste.

## Credits

- **[Panda Theme](https://github.com/PandaTheme)** by [Siamak Mokhtari](https://github.com/siamak) —
  the original theme this palette comes from. All color credit is theirs.
- **[Ghostty](https://ghostty.org)** by Mitchell Hashimoto and contributors — the terminal
  this theme targets. See the [theme docs](https://ghostty.org/docs/features/theme).

## License

[MIT](./LICENSE). The original Panda palette is likewise MIT licensed; see the
acknowledgment in `LICENSE`.
