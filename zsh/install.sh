#!/usr/bin/env sh

is_installed() {
  is_installed=command -v $1 >/dev/null 2>&1
  echo is_installed
}
install_omz_if_not_exists() {
  is_omz_installed=$(is_installed omz)
  if [ ! is_omz_installed ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  fi
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

is_zsh_installed=$(is_installed zsh)
if [ ! is_zsh_installed ]; then
  answer=""
  if ! $install_program; then
    printf 'Install zsh (y/n)? '
    read answer
  fi
  install_zsh=$install_program || "$answer" != "${answer#[Yy]}"
  case "$answer" in
  [Yy]*) install_zsh=true ;;
  *) install_zsh=$install_program ;;
  esac

  if $install_zsh; then
    sudo apt install zsh
    echo 'zsh installed'
    # make zsh the default shell
    chsh -s $(which zsh)
  else
    echo 'zsh not installed'
  fi
fi

if [ is_zsh_installed ]; then
  answer=""
  if ! $link_config; then
    printf 'Apply zsh config (y/n)? '
    read answer
  fi
  case "$answer" in
  [Yy]*) link_zsh=true ;;
  *) link_zsh=$link_config ;;
  esac
  if $link_zsh; then
    if [ -e $HOME/.zshrc ]; then
      now=$(date "+%F-%T")
      mv $HOME/.zshrc $HOME/.zshrc_$now
    fi
    install_omz_if_not_exists
    ln -sf $(pwd)/$(dirname $0)/zshrc $HOME/.zshrc
  else
    echo "zsh was not configured"
  fi
fi
answer=""
if ! $link_config; then
  printf 'Link aliases (y/n)? '
  read answer
fi
case "$answer" in
[Yy]*) link_aliases=true ;;
*) link_aliases=$link_config ;;
esac
if $link_aliases; then
  if [ -e $HOME/.aliases ]; then
    now=$(date "+%F-%T")
    mv $HOME/.aliases $HOME/.aliases_$now
  fi
  ln -sf $(pwd)/$(dirname $0)/../aliases $HOME/.aliases
else
  echo "zsh was not configured"
fi
