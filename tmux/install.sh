#!/usr/bin/env sh

is_installed() {
  is_installed=command -v $1 >/dev/null 2>&1
  echo is_installed
}

install_tpm_if_not_exists() {
  TPM_DIR="$HOME/.tmux/plugins/tpm"
  if [ ! -d "$TPM_DIR" ]; then
    echo "Installing TPM"
    mkdir -p "$(dirname "$TPM_DIR")"
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
  else
    echo "TPM already installed"
  fi

  if ! tmux info >/dev/null 2>&1; then
    echo "Starting tmux server"
    tmux start-server
  fi

  "$TPM_DIR/bin/install_plugins"
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

is_tmux_installed=$(is_installed tmux)
if [ ! is_tmux_installed ]; then
  answer=""
  if ! $install_program; then
    printf 'Install tmux (y/n)? '
    read answer
  fi
  case "$answer" in
  [Yy]*) install_tmux=true ;;
  *) install_tmux=$install_program ;;
  esac
  if $install_tmux; then
    sudo apt install tmux
    echo 'tmux installed'
  else
    echo 'tmux not installed'
  fi
fi

if [ is_tmux_installed ]; then
  answer=""
  if ! $link_config; then
    printf 'Apply tmux config (y/n)? '
    read answer
  fi

  case "$answer" in
  [Yy]*) link_tmux=true ;;
  *) link_tmux=$link_config ;;
  esac
  if $link_tmux; then
    if [ -e $HOME/.tmux.conf ]; then
      now=$(date "+%F-%T")
      mv $HOME/.tmux.conf $HOME/.tmux.conf$now
    fi
    ln -sf $(pwd)/$(dirname $0)/config $HOME/.tmux.conf
    install_tpm_if_not_exists
  else
    echo "tmux was not configured"
  fi
fi
