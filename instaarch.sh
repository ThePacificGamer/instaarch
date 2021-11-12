#!/bin/bash
#InstaArch Script
sudo pacman -S neofetch
cd
clear
neofetch
echo "Welcome to InstaArch!"
echo "This will only work on an existing arch enviroment that isn't chrooted into, also make sure 32-bit repos are enabled."
sleep 3
clear
echo "YOU HAVE 10 SECONDS TO CTRL+Z OUT! THIS IS YOUR LAST CHANCE!"
sleep 10
#updating the system
echo "making sure Arch is up to date..."
sudo pacman --noconfirm -Syu
#obtaining AUR
echo "installing PARU for the AUR"
sudo pacman -S --needed --noconfirm base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
clear
echo "type paru -S <package> to use the AUR"
sleep 3
#installing xorg+nvidia drivers
echo "installing KDE and Nvidia Drivers"
sudo pacman -S --noconfirm xorg xterm xorg-xclock xorg-twm xorg-xinit xorg-server-utils xorg-drivers nvidia nvidia-libgl lib32-nvidia-utils lib32-nvidia-libgl lib32-mesa-demos libva-vdpau-driver
sudo pacman -S --noconfirm plasma kde-applications-meta
sleep 2
#get that audio!
echo "Installing audio drivers"
sudo pacman -S --noconfirm pulseaudio pulseaudio-alsa pavucontrol xfce4-pulseaudio-plugin
sleep 2
#get the display manager
echo "Installing a display manager" 
sudo pacman -S --noconfirm sddm
sleep 2
#getting the games
echo "getting game launchers and other stuff"
paru -S discord
sudo pacman -S --noconfirm wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox 
sudo pacman -S --noconfirm steam lutris  tilix
sudo pacman -S --noconfirm firefox
paru -S all-repository-fonts
clear
echo "Finishing up! We are almost done!"
sleep 2
#finish setting stuff up
sudo systemctl enable sddm
sudo systemctl enable nvidia-persistenced.service
#horray we done!
clear
echo "Done! Enjoy your arch install!"
echo "Rebooting in 5 seconds..."
sleep 5
sudo reboot
