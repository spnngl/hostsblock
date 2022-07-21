# Hostsblock

Simple systemd service & timer to automatically update hosts blocking file.

## Configuration

### Local

Add your .hosts file(s) to local `etc/hosts.d/` folder. Use hosts file
formatting.

### Web

Put a .txt file in `/etc/hosts.d` folder with one url by line to use.
See: `etc/hosts.d/urls.txt` file

## Install

A makefile is available to simplify things, do a `make install`.
Do not forget to `systemctl daemon-reload`.
