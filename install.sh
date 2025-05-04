# !/bin/bash

if ! command -v pip 2>&1 >/dev/null
then
    echo "Make sure to install python and pip first!"
    exit 1
fi

echo "Installing core hyprland components"
yay -S --needed kitty hyprland polkit hyprpaper hyprlock hypridle hyprcursor hyprpolkitagent hyprsunset xdg-desktop-portal-hyprland thunar wofi waybar wlogout swaync

echo "Installing themes dependencies"
yay -S --needed nwg-look qogir-icon-theme materia-gtk-theme illogical-impulse-bibata-modern-classic-bin

echo "Installing pyprland"
pip install poetry-core # needed for pyprland
pip install pywal16

yay -S --needed  python-pywal16 python-pywalfox pyprland
