#!/bin/zsh
#
# Show caffeine satus

coffee=$(gsettings --schemadir ~/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/ get org.gnome.shell.extensions.caffeine toggle-state)

if $coffee; then
    echo "Awake"
else
    echo "Asleep"
fi

case "$1" in
    -t)
        if $coffee; then
            gsettings --schemadir ~/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/ set org.gnome.shell.extensions.caffeine toggle-state false 
        else
            gsettings --schemadir ~/.local/share/gnome-shell/extensions/caffeine@patapon.info/schemas/ set org.gnome.shell.extensions.caffeine toggle-state true 
        fi
        ;;
    *)
esac
