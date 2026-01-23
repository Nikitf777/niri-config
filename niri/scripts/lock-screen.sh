#!/usr/bin/sh
prev_layout=$(niri msg --json keyboard-layouts | jq  '.current_idx')
lockscreen_layout="English (US)"
niri msg action switch-layout $(niri msg --json keyboard-layouts | jq --arg layout "$lockscreen_layout" '.names | index($layout)')
hyprlock
niri msg action switch-layout $prev_layout

