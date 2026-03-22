# Install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
cd ..

# Install yay packages
yay -S librewolf-bin

# Install pacman packages
pacman -S --no-confirm vifm kitty waybar

cp -r ./hypr/* ~/.config/hypr/
cp -r ./nvim/* ~/.config/nvim/
cp -r ./waybar/* ~/.config/waybar/

cp ./tmux/.tmux.conf ~/
cp ./.bash_profile ~/
cp ./restart_waypaperd.sh ~/
