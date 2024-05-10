# install packages
sudo pacman -S cmake neovim zsh

# clone powerlevel10k for zsh 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# initiate submodules
git submodule update --init

# set zsh to default shell and install oh my zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# make config directory
mkdir ~/.config

# remove existing files and configs
echo "Removing existing files and configs"
rm -rfv ~/.config/nvim
rm -rfv ~/.zshrc

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
ln -s /home/$USER/.dotfiles/.zshrc ~/.zshrc
ln -s /home/$USER/.dotfiles/.gitconfig ~/.gitconfig
