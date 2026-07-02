#!/usr/bin/env bash
# Preview the active terminal theme's 16 ANSI colors.
# Run this in a terminal that uses the theme (e.g. Ghostty with `theme = ghost-of-panda`).
# It reads whatever palette the terminal has, so it works for any theme.

set -euo pipefail

names=(black red green yellow blue magenta cyan white)

printf '\n  Ghost of Panda \xe2\x80\x94 ANSI palette\n\n'

# Two rows of swatches: normal (0-7), then bright (8-15).
for base in 0 8; do
  for i in $(seq 0 7); do
    n=$((base + i))
    printf '\033[48;5;%dm %3d \033[0m' "$n" "$n"
  done
  printf '  '
  for i in $(seq 0 7); do
    n=$((base + i))
    label=${names[$i]}
    [ "$base" -eq 8 ] && label="+${label}"
    printf ' \033[38;5;%dm%s\033[0m' "$n" "$label"
  done
  printf '\n'
done

# A sample sentence per color to judge text readability on the background.
printf '\n  Text on background:\n'
for n in $(seq 0 15); do
  printf '   \033[38;5;%dm%2d  The quick brown fox jumps over the lazy dog 0123\033[0m\n' "$n" "$n"
done

# Bold + a foreground-on-colored-background check.
printf '\n  On colored backgrounds:\n   '
for n in $(seq 0 15); do
  printf '\033[48;5;%dm\033[38;5;0m %02d \033[0m' "$n" "$n"
done
printf '\n\n'
