# Instalação dos programas básicos

```sh
# basic programs
sudo apt update
sudo apt upgrade

sudo apt install curl
sudo atp install vim

sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

sudo apt install zsh-syntax-highlighting
usermod -s /bin/zsh daniel

# fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/UbuntuMono.tar.xz
tar -xzvf ~/Downloads/UbuntuMono UbuntuMono.tar.xz
cp ~/Downloads/UbuntuMono/*.ttf ~/.local/share/fonts/
fc-cache -f -v
# change terminal font and close all windows
