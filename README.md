# 1. Installation

## 1.1 Clone the Repository
1. Run `git clone https://github.com/aiden-wenzel/.dotfiles.git` in your home directory.
2. Run `cd ~/.dotfiles` to get into the dotfiles directory. 

## 1.2 Stowing Dotfiles
1. Install GNU stow using your prefered package manager. For Ubuntu, run `sudo apt install stow`.
2. Run the `install.sh` script in the dotfiles directory. Do this with `sh install.sh` from within the dotfiles directroy. This will remove old configs and create symlinks in the correct locations pointing to the config files in the dotfiles directory.

## 1.3 Install Packages
1. `sudo apt install -y python3-venv`
2. `sudo apt install python3-pip`
3. `sudo apt install unzip`

## 1.3 Installing Neovim (Ubuntu)
1. Run `sudo snap install nvim`.

## 1.4 Installing Tmux
```
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```
Press CRTL-B followed by I to install plugins found in the `.tmux.conf` dotfile.

## 1.5 Installing NodeJs
Run 
```
wget https://nodejs.org/dist/v22.2.0/node-v22.2.0-linux-x64.tar.xz
sudo tar -xvf node-v22.2.0-linux-x64.tar.xz -C /usr/local
rm node-v22.2.0-linux-x64.tar.xz
```

## 1.6 Oh-My-Posh
Run `curl -s https://ohmyposh.dev/install.sh | bash -s`
