#!/usr/bin/sh
cd niri/scripts
./apply-all-custom-shaders.sh
cd ../..
./apply-niri-config.sh
./apply-delta-shell-config.sh
./apply-systemd-config.sh
cp -rv hypr/ ~/.config/
