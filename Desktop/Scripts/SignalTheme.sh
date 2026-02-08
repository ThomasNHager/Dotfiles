# Theming signal
FLAVOR=mocha TEMP=$(mktemp -d) SIGNAL_DIR="/opt/Signal/resources"
asar e "${SIGNAL_DIR}/app.asar" ${TEMP}
curl "https://raw.githubusercontent.com/CalfMoon/signal-desktop/refs/heads/main/themes/catppuccin-${FLAVOR}.css" -o "${TEMP}/stylesheets/catppuccin-${FLAVOR}.css"
sed -i "1i @import \"catppuccin-${FLAVOR}.css\";" "${TEMP}/stylesheets/manifest.css"
sudo asar p ${TEMP} "${SIGNAL_DIR}/app.asar"
