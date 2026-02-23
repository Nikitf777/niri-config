#!/bin/sh
sudo cp -rv systemd/ /etc/

systemctl --user add-wants niri.service noctalia.service
