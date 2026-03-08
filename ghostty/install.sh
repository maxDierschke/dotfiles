#!/usr/bin/env sh

is_installed() {
  is_installed=command -v $1 >/dev/null 2>&1
  echo is_installed
}

link_config=false
insall_program=false
while getopts "ciy" opt; do
  case $opt in
  c)
    link_config=true
    ;;
  i)
    insall_program=true
    ;;
  y)
    # yes to everything
    insall_program=true
    link_config=true
    ;;
  esac
done

is_ghostty_installed=$(is_installed ghostty)
if [ ! is_ghostty_installed ]; then
  answer=""
  if ! $install_program; then
    printf 'Install Ghostty (y/n)? '
    read answer
  fi
  install_ghostty=$install_program || "$answer" != "${answer#[Yy]}"
  case "$answer" in
  [Yy]*) install_ghostty=true ;;
  *) install_ghostty=$install_program ;;
  esac

  if $install_ghostty; then
    sudo snap install ghostty --classic
    echo 'Ghostty installed'
  else
    echo 'Ghostty not installed'
  fi
fi

if [ is_ghostty_installed ]; then
  answer=""
  if ! $link_config; then
    printf 'Apply Ghostty config (y/n)? '
    read answer
  fi
  case "$answer" in
  [Yy]*) link_ghostty=true ;;
  *) link_ghostty=$link_config ;;
  esac
  if $link_ghostty; then
    if [ -e $HOME/.config/ghostty/config ]; then
      now=$(date "+%F-%T")
      mv $HOME/.config/ghostty/config $HOME/.config/ghostty/config_$now
    fi
    ln -sf $(pwd)/$(dirname $0)/config $HOME/.config/ghostty/config
  else
    echo "Ghostty was not configured"
  fi
fi
