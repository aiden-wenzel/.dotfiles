git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz

wget https://github.com/dandavison/delta/releases/download/0.17.0/git-delta_0.17.0_amd64.deb
sudo dpkg -i git-delta_0.17.0_amd64.deb
rm git-delta_0.17.0_amd64.deb
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
