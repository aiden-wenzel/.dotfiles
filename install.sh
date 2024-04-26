rm -rf ~/.config/nvim 

git submodule add git@github.com:aiden-wenzel/Neovim_Config.git nvim

ln -s /home/$USER/.dotfiles/nvim ~/.config/nvim
