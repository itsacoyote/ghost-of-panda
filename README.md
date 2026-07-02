# 🐼 Ghost of Panda

A [Ghostty](https://ghostty.org) terminal theme inspired by
[**Panda**](https://github.com/PandaTheme), retuned so every color meets WCAG AA contrast.
It ships in **dark and light variants** that Ghostty can switch automatically with your
system appearance. The name is a play on words: **Ghost**ty + **Panda**.

Panda is a warm, dark theme that is no longer actively maintained and never shipped a
Ghostty port. Ghost of Panda keeps its pink, teal, and orange character while making every
color comfortably readable. It is an independent, unaffiliated tribute.

![License: MIT](https://img.shields.io/badge/license-MIT-19F9D8)

## Preview

**Dark** (`ghost-of-panda`):

![Ghost of Panda dark: a terminal window showing the palette and sample output](assets/ghost-of-panda.svg)

**Light** (`ghost-of-panda-light`):

![Ghost of Panda light: a terminal window showing the palette and sample output](assets/ghost-of-panda-light.svg)

See it live in your own terminal, too. With a theme active, run the included script:

```bash
./preview.sh
```

It prints all 16 ANSI colors as swatches, a sample sentence per color, and dark text on
each color, so you can judge readability at a glance.

## Installation

### Quick install (the theme files)

```bash
mkdir -p ~/.config/ghostty/themes
for t in ghost-of-panda ghost-of-panda-light; do
  curl -fLo ~/.config/ghostty/themes/$t \
    https://raw.githubusercontent.com/itsacoyote/ghost-of-panda/main/themes/$t
done
```

### Or clone the repo

```bash
git clone https://github.com/itsacoyote/ghost-of-panda.git
mkdir -p ~/.config/ghostty/themes
cp ghost-of-panda/themes/* ~/.config/ghostty/themes/
```

> On Linux, Ghostty also reads themes from `$XDG_CONFIG_HOME/ghostty/themes` when `XDG_CONFIG_HOME` is set.

### Enable it

In your Ghostty config at `~/.config/ghostty/config` (create the file if it doesn't exist
yet), either pick the dark theme:

```
theme = ghost-of-panda
```

or switch automatically with your system's light and dark mode:

```
theme = light:ghost-of-panda-light,dark:ghost-of-panda
```

Then reload your config with <kbd>⌘</kbd>+<kbd>⇧</kbd>+<kbd>,</kbd> on macOS (or restart Ghostty).

## Palette

Every text color clears WCAG AA (>= 4.5:1) against its background; most reach AAA. The one
exception is ANSI white (slots 7 and 15) on the light theme, which maps to light grays, as
it does on any light theme.

### Dark (`ghost-of-panda`)

| Slot | Role | Hex | | Slot | Role | Hex |
|---:|---|---|---|---:|---|---|
| 0 | black | `#292A2B` | | 8 | bright black | `#8E93A4` |
| 1 | red | `#FF4B82` | | 9 | bright red | `#FF4B82` |
| 2 | green | `#19F9D8` | | 10 | bright green | `#19F9D8` |
| 3 | yellow | `#FFB86C` | | 11 | bright yellow | `#FFCC95` |
| 4 | blue | `#45A9F9` | | 12 | bright blue | `#6FC1FF` |
| 5 | magenta | `#FF75B5` | | 13 | bright magenta | `#FF9AC1` |
| 6 | cyan | `#2CE0EA` | | 14 | bright cyan | `#2CE0EA` |
| 7 | white | `#E6E6E6` | | 15 | bright white | `#FFFFFF` |

| UI element | Hex |
|---|---|
| `background` | `#292A2B` |
| `foreground` | `#E6E6E6` |
| `cursor-color` | `#E6E6E6` |
| `cursor-text` | `#292A2B` |
| `selection-background` | `#8E93A4` |
| `selection-foreground` | `#292A2B` |

### Light (`ghost-of-panda-light`)

Panda has no official light palette, so the light variant keeps its hues and darkens each
accent to meet WCAG AA on a warm greige background (`#F0EBE1`).

<details><summary><strong>Light palette (ANSI + UI)</strong></summary>

| Slot | Role | Hex | | Slot | Role | Hex |
|---:|---|---|---|---:|---|---|
| 0 | black | `#2B2D2E` | | 8 | bright black | `#6D675A` |
| 1 | red | `#D10040` | | 9 | bright red | `#D10040` |
| 2 | green | `#037766` | | 10 | bright green | `#037766` |
| 3 | yellow | `#A35400` | | 11 | bright yellow | `#A35400` |
| 4 | blue | `#066BBC` | | 12 | bright blue | `#066BBC` |
| 5 | magenta | `#CC005F` | | 13 | bright magenta | `#CC005F` |
| 6 | cyan | `#0C7379` | | 14 | bright cyan | `#0C7379` |
| 7 | white | `#B4AC9C` | | 15 | bright white | `#E0DDD6` |

| UI element | Hex |
|---|---|
| `background` | `#F0EBE1` |
| `foreground` | `#2B2D2E` |
| `cursor-color` | `#2B2D2E` |
| `cursor-text` | `#F0EBE1` |
| `selection-background` | `#D3CEC5` |
| `selection-foreground` | `#2B2D2E` |

</details>

### Notes on the palette

- **Accessibility first.** Both variants adapt Panda's colors so each meets WCAG AA against
  the background. In the dark theme, Panda's signature red (`#FF2C6D`, 3.99:1) becomes its
  lighter sibling `#FF4B82` (4.51:1) and the dim comment gray becomes a readable `#8E93A4`.
  The light theme darkens every accent to stay readable on the paper background.
- **A real cyan.** Panda has no dedicated cyan (its "green" `#19F9D8` is really a teal), so
  older Panda terminal ports reused a light blue in the cyan slot. Ghost of Panda adds a
  true cyan (`#2CE0EA` dark, `#0C777D` light) so cyan and blue read as distinct.
- **A more saturated Panda exists.** Panda's official iTerm port uses a darker, more
  saturated interpretation (background `#1D1E20`, red `#FB055A`). Ghost of Panda follows
  the canonical editor palette, the look most people associate with Panda.
- Every value is plain hex; tweak any slot in `themes/ghost-of-panda` or
  `themes/ghost-of-panda-light` to taste.

## Credits

- **[Panda Theme](https://github.com/PandaTheme)** by [Siamak Mokhtari](https://github.com/siamak):
  the original theme this palette is based on. All color credit is theirs.
- **[Ghostty](https://ghostty.org)** by Mitchell Hashimoto and contributors: the terminal
  this theme targets. See the [theme docs](https://ghostty.org/docs/features/theme).

## License

[MIT](./LICENSE). The original Panda palette is likewise MIT licensed; see the
acknowledgment in `LICENSE`.
