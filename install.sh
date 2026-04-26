pacman -S --needed git base-devel vifm kitty waybar grim wmenu krita

# Install fancy-git
curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh

# Install yay
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
cd ..

# Install nerd fonts
git clone https://github.com/ryanoasis/nerd-fonts.git && cd nerd-fonts && chmod +x ./install.sh && ./install.sh
cd ..

cp -r ./hypr/* ~/.config/hypr/
cp -r ./nvim/* ~/.config/nvim/
cp -r ./waybar/* ~/.config/waybar/

cp ./tmux/.tmux.conf ~/
cp ./.bash_profile ~/
cp ./restart_waypaperd.sh ~/

# Install yay packages
yay -Sc --noconfirm librewolf-bin

