rm -v ~/.bashrc
rm -v ~/.gitconfig
rm -rfv ~/.config/nvim
rm -v ~/.zshrc

stow .

git submodule init
git submodule update
