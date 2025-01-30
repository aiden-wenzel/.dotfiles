# lazy git plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# node js 
wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz

# lazy git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
