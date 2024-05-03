# initiate submodules
git submodule update --init

# set zsh to default shell and install oh my zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# remove existing files and configs
echo "Removing existing files and configs"
rm -rfv ~/.config/nvim
rm -rfv ~/.bashrc

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
ln -s /home/$USER/.dotfiles/.bashrc ~/.bashrc
ln -s /home/$USER/.dotfiles/.zshrc ~/.zshrc
