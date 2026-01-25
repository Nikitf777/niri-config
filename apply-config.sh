#!/usr/bin/sh
./apply-niri-config.sh
./install-packages.sh
cd niri/scripts
./apply-all-custom-shaders.sh
cd ../..
./apply-delta-shell-config.sh
./apply-systemd-config.sh
./apply-hypr-config.sh
