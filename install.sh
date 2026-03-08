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

./ghostty/install.sh "$@"
./tmux/install.sh "$@"
