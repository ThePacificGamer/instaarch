#!/bin/bash
#InstaArch Script

cd
echo "Welcome to InstaArch!"
echo "This will only work on an existing arch enviroment that isn't chrooted into, also make sure 32-bit repos are enabled."
#updating the system
echo "making sure Arch is up to date..."
sudo pacman --noconfirm -Syu
#obtaining AUR
echo "installing YAY for the AUR"
git https://github.com/Jguer/yay.git
cd yay
makepkg -si
cd
echo "type yay -S <package> to use the AUR"
#installing xorg+nvidia drivers
echo "installing XFCE and Nvidia Drivers"
sudo pacman -S --noconfirm xorg xterm xorg-xclock xorg-twm xorg-xinit xorg-server-utils xorg-drivers nvidia nvidia-libgl lib32-nvidia-utils lib32-nvidia-libgl lib32-mesa-demos libva-vdpau-driver
sudo pacman -S --noconfirm xfce4 xfce4-goodies
#get that audio!
echo "Installing audio drivers"
sudo pacman -S --noconfirm pulseaudio pulseaudio-alsa pavucontrol xfce4-pulseaudio-plugin
#get the display manager
echo "Installing a login manager" 
sudo pacman -S --noconfirm lxdm
#getting the games
echo "getting game launchers and other stuff"
yay -S discord
sudo pacman -S --noconfirm wine-staging winetricks giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader cups samba dosbox 
sudo pacman -S --noconfirm steam lutris
#finish setting stuff up
echo "Finishing up! We are almost done!"
sudo systemctl enable lxdm
#horray we done!
clear
echo "Done! Enjoy your arch install!"
echo "Rebooting in 5 seconds..."
sleep 5
sudo reboot
