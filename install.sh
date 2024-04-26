# initiate submodules
git submodule update --init

# remove existing files and configs
echo "Removing existing files and configs"
rm -rfv ~/.config/nvim 

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
