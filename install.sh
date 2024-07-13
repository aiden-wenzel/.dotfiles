sudo apt update
sudo apt upgrade

sudo apt install $(cat ./autoinstall/apt-packages.txt)
sudo snap install $(cat ./autoinstall/snap-packages.txt)
sh ./autoinstall/other-installs.sh
sh ./autoinstall/debugpy-venv.sh

rm -v ~/.bashrc
rm -v ~/.gitconfig
rm -rfv ~/.config/nvim
rm -v ~/.zshrc

stow --ignore="autoinstall" .

git submodule init
git submodule update
