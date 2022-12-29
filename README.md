![screen2](https://user-images.githubusercontent.com/62457015/208231100-a8103398-6024-4298-aaf8-753a5ecf20ad.png)

![dwm](https://user-images.githubusercontent.com/62457015/209472905-ac0bb2c1-a906-4ffb-bd02-274144bbf94f.png)

# dwm-dotfiles
dwm version 6.4
minimum patches:
Vanity gaps, tag preview bar, alpha bar, noborder, awesomebar, systray, bar_winicon.
used flexipatch and flexi-finalizer,
st terminal https://github.com/LukeSmithxyz/st                       

Laptop configuration.                                          
install soft:                                                    
sudo pacman -S xorg xorg-xinit git mc nano neovim terminus-font ttf-font-awesome ttf-nerd-fonts-symbols-1000-em feh pulseaudio pamixer dmenu dunst picom geany thunar brightnessctl ranger ueberzug imlib2

install browser, polkit:                                     
yay -S min xfce-polkit

git clone https://github.com/tuxos78/dwm-dotfiles.git                        

Copy dwm, st, fehbg, .xinitrc .bashrc wallpapers to home/user/       

install dwm:
cd dwm 
sudo make clean install
install terminal:
cd st
sudo make clean install

Copy picom, ranger, dunst neovim gtk-3.0 to home/user/.config

Autologin dwm:                                                            
sudo mkdir /etc/systemd/system/getty@tty1.service.d               
cd /etc/systemd/system/getty@tty1.service.d                            
sudo nano override.conf
[Service]                                                               
Type=simple                                                              
ExecStart=                                                                  
ExecStart=-/sbin/agetty --autologin yourusername --noclear %I 38400 linux

nano .bash_profile                                                        
#Startx Automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
. startx
logout
fi






