sudo pacman -S zsh
rm -rfv ~/.oh-my-zsh
rm -rfv ~/.zshrc
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm -rfv ~/.zshrc ~/.zshrc.pre-oh-my-zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc

