# remove existing files and configs
echo "Removing existing files and configs\n\n"
rm -rfv ~/.config/nvim 

# add any git modules for existing gitrepos
echo "Adding github sub modules\n\n"
git submodule add git@github.com:aiden-wenzel/Neovim_Config.git nvim

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
