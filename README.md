![2023-06-07-124732_1920x1080_scrot](https://github.com/tuxos78/dwm-dotfiles/assets/62457015/dd042317-5d26-44c8-9937-e61a1e4450da)
![2023-06-07-123749_1920x1080_scrot](https://github.com/tuxos78/dwm-dotfiles/assets/62457015/3b2d38a3-a0a7-4bd3-8a9f-d6931f183838)

# dwm-dotfiles
dwm version 6.4
minimum patches:
Fullgaps, tag preview bar, systray.                    

Laptop configuration.                                          
install soft:                                                    
sudo pacman -S xorg xorg-xinit git mc nano neovim terminus-font ttf-font-awesome ttf-nerd-fonts-symbols-1000-em feh pulseaudio pamixer dmenu dunst picom geany thunar brightnessctl ranger ueberzug imlib2 xdg-user-dirs

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







