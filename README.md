# Install packages that I like
sudo apt update
sudo apt upgrade
sudo apt install $(cat ./apt-packages.txt)


# Bashrc
rm -v ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc

# Git Config
rm -v ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Install Node
# Required for neovim plugins.
wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz

# Nvim Installation
curl -LO https://github.com/neovim/neovim/releases/download/v0.11.5/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz
sudo rm -rfv /usr/local/nvim-linux64
sudo cp -r nvim-linux-x86_64 /usr/local/nvim-linux64
rm -rfv nvim-linux-x86_64.tar.gz nvim-linux-x86_64

rm -rfv ~/.config/nvim

# These commands need to be run in .dotfiles directory.
git submodule init
git submodule update
mkdir -p ~/.config
ln -s ~/.dotfiles/.config/nvim ~/.config/nvim

# Tmux Installation
sudo apt install tmux
rm -v ~/.tmux.conf
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
sudo rm -rfv ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo apt install tmux

## 1.6 Installing Lazygit
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit
```

## 1.5 Installing NodeJs
Run 
```
wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz
```
