git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz

wget https://github.com/dandavison/delta/releases/download/0.17.0/git-delta_0.17.0_amd64.deb
sudo dpkg -i git-delta_0.17.0_amd64.deb
rm git-delta_0.17.0_amd64.deb

sudo curl -s https://ohmyposh.dev/install.sh | sudo bash -s
