#!/bin/bash
if [ -f ~/.aliases ] || [ -L ~/.aliases ]; then
	echo '~/.aliases already exists and was not linked'
else
	ln -sf ~/.dotfiles/.aliases ~/.aliases  
fi
ln -sF ~/.dotfiles/.config/nvim ~/.config/nvim
if [ -f ~/.zshrc ] || [ -L ~/.zshrc ]; then
	echo '~/.zshrc already exists and was not linked'
else
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
fi
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then
	echo '~/.zshrc already exists and was not linked'
else
	ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
fi
	
