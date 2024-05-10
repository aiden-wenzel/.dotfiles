# install packages
sudo pacman -S cmake 

# clone powerlevel10k for zsh 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# set zsh to default shell and install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# make config directory
mkdir ~/.config

# remove existing files and configs
echo "Removing existing files and configs"

# create symlinks to dotfiles
echo "Create symlinks to dotfiles"
ln -s /home/$USER/.dotfiles/.gitconfig ~/.gitconfig
