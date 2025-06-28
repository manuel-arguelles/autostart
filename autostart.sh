#!/usr/bin/env sh

AUTOSTART_PATH="$HOME/.config/autostart"

for desktop_file in "$AUTOSTART_PATH"/*.desktop; do
    command=$(grep -ioP '^Exec=\K.*' "$desktop_file")
    (nohup "$command" >/dev/null 2>&1 &)
done
