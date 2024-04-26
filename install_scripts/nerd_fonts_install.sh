mkdir ~/.fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir /home/$USER/.fonts/JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C /home/$USER/.fonts/JetBrainsMono
rm ./JetBrainsMono.tar.xz
