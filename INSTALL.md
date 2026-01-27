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

usermod -s /bin/zsh daniel

# fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/UbuntuMono.tar.xz
tar -xzvf ~/Downloads/UbuntuMono UbuntuMono.tar.xz
cp ~/Downloads/UbuntuMono/*.ttf ~/.local/share/fonts/
fc-cache -f -v
# change terminal font and close all windows

# automanaging config files
sudo apt install stow
# installing this project's config files
stow .

# installing zsh things
sudo apt install zsh-syntax-highlighting
curl -s https://ohmyposh.dev/install.sh | bash -s


# tmux
sudo apt install tmux

# make
sudo apt-get install build-essential

# docker
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```
