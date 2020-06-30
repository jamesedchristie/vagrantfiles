#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install -y git
sudo apt-get install -y build-essential

# Zsh
sudo apt-get install zsh -y
sudo chsh -s $(which zsh) $(whoami)

# Prezto
zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

ln -f -s -v /home/vagrant/.zprezto/runcoms/zlogin /home/vagrant/.zlogin
ln -f -s -v /home/vagrant/.zprezto/runcoms/zlogout /home/vagrant/.zlogout
ln -f -s -v /home/vagrant/.zprezto/runcoms/zshenv /home/vagrant/.zshenv

git clone --recursive https://github.com/jamesedchristie/dotfiles.git /home/vagrant/.dotfiles

ln -f -s -v /home/vagrant/.dotfiles/.zprezto/runcoms/zprofile /home/vagrant/.zprofile
ln -f -s -v /home/vagrant/.dotfiles/.zprezto/runcoms/zpreztorc /home/vagrant/.zpreztorc
ln -f -s -v /home/vagrant/.dotfiles/.zprezto/runcoms/zshrc /home/vagrant/.zshrc
ln -s -v /home/vagrant/.dotfiles/.vimrc /home/vagrant/.vimrc
ln -s -v /home/vagrant/.dotfiles/.vimrc.plug /home/vagrant/.vimrc.plug
ln -s -v /home/vagrant/.dotfiles/.gitconfig /home/vagrant/.gitconfig

sudo chsh -s /bin/zsh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC3DV7Zv31e5fAK1XuK68GbQMx1YyesZFhqlVL9AR1JfaH/CNBntcWkpOsN1IilXv0XuCLkOWJ9Or0gxUz137cUQfRBYgiK2oqrT+mq+L1gF7FI+MlpKLFi4nQ4xd45vcHvJB0rKwj0UFp0DtCD4BTScUbxxEzXKRwEXWBkoFI87s9qLX3rG5unpOkkqPbFtgPUxMtVnalIFqR90N8Nb+Fa15JmCYVnUKcT2Qm+KIihrMaAPnAMZYKhjlXInDfTSfizd/fyFVKbXs83RCVh2QO/wyqtYWzvP+VpL22mJ/2IATEMMFhZE5bBbDIBmXwIw213vH9jxI/L3z/PVvu0TV9HPBuIZEItpfOnHt22pUUixHrJDIQADtgrZ8vpsIM5FQtpBINcyfrdl3aS5cjJaGbhQbLimxfCyJbfosRIRRP3cCeWLgqlnE5PzMlF3jS3sfCgyPPFqZwaVFIJo/XI6d5hy+uvxcltz3aczPjuK9EyxsHld0s4aXW5O6mf323Lx3M6caMNuK3MaH+JPLfnGhoUF9tU3C2sRDF7I86vpf9Viwlo2/C9EgEDe5LDECSqH/p765CJ7yqsWe/1ocJmyH5yqZObrGgghMZoRUIJPkTPyDHv66xT2pKAGqfkKhwT8IeGfhVTX2tvu0jFSiS3TfMPFzPltl8+vxV0aB1+LcuI4w== jamesedchristie1@gmail.com" >> .ssh/authorized_keys

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y