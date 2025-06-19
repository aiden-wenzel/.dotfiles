sudo apt update
sudo apt upgrade

sudo apt install $(cat ./apt-packages.txt)
sh ./autoinstall/other-installs.sh
sh ./autoinstall/debugpy-venv.sh

# Bashrc
rm -v ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc

# Git Config
rm -v ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Nvim Installation
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz
sudo rm -rfv /usr/local/nvim-linux64
sudo cp -r nvim-linux-x86_64 /usr/local/nvim-linux64
rm -rfv nvim-linux-x86_64.tar.gz nvim-linux-x86_64

rm -rfv ~/.config/nvim
git submodule init
git submodule update
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

# Tmux Installation
rm -v ~/.tmux.conf
sudo rm -rfv ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
