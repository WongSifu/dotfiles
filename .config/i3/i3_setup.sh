!#/bin/sh

pacman -S \
	xorg \
	lightdm-gtk-greeter \
	i3-wm \
	i3lock \
	i3status \
	dmenu \
	kitty \
	nitrogen \
	lxappearance \
	gtk-engine-murrine

wget -P $HOME/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Lilex.zip
wget -P $HOME/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/ProFont.zip

# git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git $HOME/Downloads
# mkdir .themes .icons
