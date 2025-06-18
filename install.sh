sudo apt update
sudo apt upgrade

sudo apt install $(cat ./autoinstall/apt-packages.txt)
sh ./autoinstall/other-installs.sh
sh ./autoinstall/debugpy-venv.sh

# Bashrc
rm -v ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc

# Git Config
rm -v ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Nvim Installation
rm -rfv ~/.config/nvim
git submodule init
git submodule update
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

# Tmux Installation
rm -v ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
