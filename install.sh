# initiate submodules
git submodule update --init

# remove existing files and configs
echo "Removing existing files and configs"
rm -rfv ~/.config/nvim
rm -rfv ~/.bashrc

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
ln -s /home/$USER/.dotfiles/.bashrc ~/.bashrc
