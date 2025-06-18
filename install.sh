sudo apt update
sudo apt upgrade

sudo apt install $(cat ./autoinstall/apt-packages.txt)
sh ./autoinstall/other-installs.sh
sh ./autoinstall/debugpy-venv.sh

rm -v ~/.bashrc
rm -rfv ~/.config/nvim
rm -v ~/.tmux.conf

# Git Config
rm -v ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Nvim Installation
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

# Tmux Installation
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

git submodule init
git submodule update
