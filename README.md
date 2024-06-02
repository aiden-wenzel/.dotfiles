# 1. Installation

## 1.1 Clone the Repository
1. Run `git clone https://github.com/aiden-wenzel/.dotfiles.git` in your home directory.
2. Run `cd ~/.dotfiles` to get into the dotfiles directory. 

## 1.2 Stowing Dotfiles
1. Install GNU stow using your prefered package manager. For Ubuntu, run `sudo apt install stow`.
2. Run the `install.sh` script in the dotfiles directory. Do this with `sh install.sh` from within the dotfiles directroy. This will remove old configs and create symlinks in the correct locations pointing to the config files in the dotfiles directory.

## 1.3 Install Packages
1. `sudo apt install -y python3-venv`

## 1.3 Installing Neovim (Ubuntu)
1. Run `wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz` in the `~` directory
2. Run `sudo tar -xvf nvim-linux64.tar.gz -C /usr/local`. This will install neovim in the correct location.

## 1.4 Installing Tmux
1. Run `sudo apt install tmux`.
2. Install the tmux plugin manager by running `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`.
3. Open tmux by typing `tmux` in the command terminal.
4. Press CRTL-B followed by I to install plugins found in the `.tmux.conf` dotfile.

## 1.5 Installing NodeJs
1. Run the command `wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz` while in your home directory.
2. Open the terminal in your home directory and run the command `sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local`. This will install node in the correct location so that the binaries are on PATH.

## 1.6 Installing ZSH
1. Run `sudo apt install zsh` to install zsh. 
2. Run `chsh -s $(which zsh)` to change the shell to be zsh by default.
3. Run `sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"` to install ohmyzsh.
4. Run `rm ~/.zshrc`. Installing ohmyzsh will rename the symlink to `.zshrc.pre-oh-my-zsh` 
5. Run `mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc` to rename the symlink to what it is supposed to be named.
