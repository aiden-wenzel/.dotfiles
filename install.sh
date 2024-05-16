sudo pacman -Syu 
sudo pacman -S --needed - < ../packages.txt

# make config directory
mkdir ~/.config

# remove existing configs
rm -rfv ~/.bashrc ~/.zshrc 
rm -rfv ~/.tmux.conf 
rm -rfv ~/.config/nvim
