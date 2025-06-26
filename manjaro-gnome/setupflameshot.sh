#!/bin/bash
echo "Setting up flameshot script required for permissions"
mkdir ~/scripts/
touch ~/scripts/flameshot.sh
echo "#!/bin/bash" >> ~/scripts/flameshot.sh
echo "flameshot gui" >> ~/scripts/flameshot.sh
chmod +x ~/scripts/flameshot.sh
echo "Setting up flameshot gui shortcut"
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/home/grian/scripts/flameshot.sh'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Alt><Shift>s'
