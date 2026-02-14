#!/usr/bin/zsh
niri msg action power-off-monitors
layouts=$(niri msg --json keyboard-layouts)
prev_layout=$(echo $layouts | jq  '.current_idx')
lockscreen_layout="English (US)"
niri msg action switch-layout $(echo $layouts | jq --arg layout "$lockscreen_layout" '.names | index($layout)')
hyprlock
niri msg action switch-layout $prev_layout

