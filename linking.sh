#!/bin/bash
if [ -f ~/.aliases ] || [ -L ~/.aliases ]; then
	echo '~/.aliases already exists and was not linked'
else
	ln -sf ~/.dotfiles/.aliases ~/.aliases  
fi
ln -sF ~/.dotfiles/.config/nvim ~/.config
if [ -f ~/.zshrc ] || [ -L ~/.zshrc ]; then
	echo '~/.zshrc already exists and was not linked'
else
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
fi
if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then
	echo '~/.tmux.conf already exists and was not linked'
else
	ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
fi

if [ -f ~/.oh-my-zsh/custom/completion.zsh ] || [ -L ~/.oh-my-zsh/custom/completion.zsh ] ; then
    echo '~/.oh-my-zsh/custom/completion.zsh already exists and was not linked'
else
    ln -sf ~/.dotfiles/.oh-my-zsh/custom/completion.zsh ~/.oh-my-zsh/custom/completion.zsh
fi
