#!/usr/bin/env sh

is_installed() {
  is_installed=command -v $1 >/dev/null 2>&1
  echo is_installed
}
link_all_configs=false
insall_all_programs=false
while getopts "ciy" opt; do
  case $opt in
  c)
    link_all_configs=true
    ;;
  i)
    insall_all_programs=true
    ;;
  y)
    # yes to everything
    insall_all_programs=true
    link_all_configs=true
    ;;
  esac
done

is_ghostty_installed=$(is_installed ghostty)
if [ ! is_ghostty_installed ]; then
  printf 'Install Ghostty (y/n)? '
  read answer
  if [ "$answer" != "${answer#[Yy]}" ]; then
    sudo snap install ghostty --classic
    echo 'Ghostty installed'
  else
    echo 'Ghostty not installed'
  fi
fi

if [ is_ghostty_installed ]; then
  answer=""
  if ! $link_all_configs; then
    printf 'Apply Ghostty config (y/n)? '
    read answer
  fi
  link_ghostty=$link_all_configs || "$answer" != "${answer#[Yy]}"
  if $link_ghostty; then
    if [ -e $HOME/.config/ghostty/config ]; then
      now=$(date "+%F-%T")
      mv $HOME/.config/ghostty/config $HOME/.config/ghostty/config_$now
    fi
    ln -sf $(pwd)/$(dirname $0)/ghostty/config $HOME/.config/ghostty/config
  else
    echo "Ghostty was not configured"
  fi
fi
