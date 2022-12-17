![dwm](https://user-images.githubusercontent.com/62457015/206675608-7e57daa5-6399-48b5-a10f-08cc8bb671d6.png)
# dwm-dotfiles
Configuration files are taken from here https://github.com/LukeSmithxyz/dwm end https://github.com/LukeSmithxyz/st
Set up hotkeys for yourself.
Laptop configuration.

install soft
: sudo pacman -S xorg xorg-xinit git mc nano neovim terminus-font ttf-font-awesome ttf-nerd-fonts-symbols-1000-em feh pulseaudio pamixer dmenu dunst picom geany thunar brightnessctl

install browser:
yay -S min 

git clone https://github.com/tuxos78/dwm-dotfiles.git

Copy dwm, st, fehbg, .xinitrc .bashrc to home/user/  

install dwm:
cd dwm 
sudo make clean install
install terminal:
cd st
sudo make clean install

Copy picom, ranger, dunst neovim gtk-3.0 to home/user/.config


