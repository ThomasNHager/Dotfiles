sudo apt update
sudo apt upgrade -y

brew update
brew upgrade

flatpak update -y

bash ~/Desktop/Scripts/SignalTheme.sh
# betterdiscordctl -i flatpak install
bdcli install --channel stable
