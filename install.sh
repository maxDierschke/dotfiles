#!/usr/bin/env sh

# the options are verified in this script, so that it already fails before forwarding
while getopts "ciy" opt; do
  case $opt in
  c) # all configs are linked
    ;;
  i) # all programs are installed
    ;;
  y)
    # yes to everything
    ;;
  esac
done
install_powerline_fonts() {
  sudo apt-get install fonts-powerline
}

install_powerline_fonts
./ghostty/install.sh "$@"
./tmux/install.sh "$@"
./zsh/install.sh "$@"
