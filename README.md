# Hostsblock

Simple systemd service & timer to automatically update hosts blocking file.

## Configuration

Put a .txt file in /etc/hosts.d folder with one url by line to use.

## Install

1. Put hostsblock.{timer,service} in /etc/systemd/system
2. `systemctl daemon-reload`
3. `systemctl enable --now hostsblock.timer`
