#!/bin/bash

# Wait for a window matching a name, then move it to a desktop
# Tracks window ID changes to handle multi-stage launches (e.g. Discord)
assign_to_desktop() {
    local app_name="$1"
    local desktop="$2"
    local timeout="${3:-30}"
    local elapsed=0
    local last_win_id=""

    while [ $elapsed -lt $timeout ]; do
        win_id=$(wmctrl -l | grep -i "$app_name" | awk '{print $1}' | head -1)
        if [ -n "$win_id" ] && [ "$win_id" != "$last_win_id" ]; then
            wmctrl -i -r "$win_id" -t "$((desktop - 1))"
            echo "Assigned $app_name (window $win_id) to desktop $desktop"
            last_win_id="$win_id"
        fi
        sleep 1
        ((elapsed++))
    done
}

# Launch all apps
firefox &
ghostty &
flatpak run com.discordapp.Discord &
spotify &
signal-desktop --password-store="gnome-libsecret" &

# Assign to desktops (runs in parallel)
assign_to_desktop "Firefox"  1 &
assign_to_desktop "Ghostty"  2 &
assign_to_desktop "Discord"  6 60 &  # extra timeout for Discord's slow launch
assign_to_desktop "Spotify"  7 &
assign_to_desktop "Signal"   8 &

wait
echo "All apps launched and assigned."
