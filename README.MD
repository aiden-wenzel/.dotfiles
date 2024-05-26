# 1. Installation

## 1.1 Clone the Repository
1. Run `git clone https://github.com/aiden-wenzel/.dotfiles.git` in your home directory.
2. Run `cd ~/.dotfiles` to get into the dotfiles directory. 

## 1.2 Stowing Dotfiles
1. Install GNU stow using your prefered package manager. For Ubuntu, run `sudo apt install stow`.
2. Run the `install.sh` script in the dotfiles directory. Do this with `sh install.sh` from within the dotfiles directroy. This will remove old configs and create symlinks in the correct locations pointing to the config files in the dotfiles directory.

## 1.3 Installing Neovim (Ubuntu)
1. Run `sudo snap install nvim`. 

    * (Running `sudo apt install neovim` installs an outdated version)

## 1.4 Installing Tmux
1. Run `sudo apt install tmux`.
2. Install the tmux plugin manager by running `git clone git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`.
3. Open tmux by typing `tmux` in the command terminal.
4. Press CRTL-B followed by I to install plugins found in the `.tmux.conf` dotfile.