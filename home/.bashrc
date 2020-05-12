if [ -f "/google/devshell/bashrc.google" ]; then
  source "/google/devshell/bashrc.google"
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if [[ -d ${HOME}/.bashrc.d ]]; then
  while read dotd; do
    source "${dotd}"
  done < <(find ${HOME}/.bashrc.d -follow -type f -not -name '*.disabled')
  unset dotd
fi
