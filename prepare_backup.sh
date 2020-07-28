#!/bin/bash
echo "Preparing backup"
echo "copying dotfiles"
cp ~/.zshrc ~/workspace/dotfiles/zsh/zshrc
cp ~/.Xresources ~/workspace/dotfiles/Xresources/Xresources
cp ~/.vimrc ~/workspace/dotfiles/vim/vimrc
cp ~/.config/nvim/init.vim ~/workspace/dotfiles/nvim/init.vim
cp ~/.config/i3/config ~/workspace/dotfiles/i3/config
cp ~/.config/picom/picom.conf ~/workspace/dotfiles/picom/picom.conf

echo "copying ssh"
cp ~/.ssh/config ~/workspace/backups/ssh/
cp ~/.ssh/authorized_keys ~/workspace/backups/ssh/
cp ~/.ssh/known_hosts ~/workspace/backups/ssh/

echo "copying kubernetes config"
cp -r ~/.kube ~/workspace/backups/kube
