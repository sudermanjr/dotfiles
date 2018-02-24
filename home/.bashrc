if [[ -d ${HOME}/.bashrc.d ]]; then
  while read dotd; do
    source "${dotd}"
  done < <(find ${HOME}/.bashrc.d -follow -type f -not -name '*.disabled')
  unset dotd
fi

export PATH=~/.local/bin:$PATH

# added by travis gem
[ -f /Users/andrew.suderman/.travis/travis.sh ] && source /Users/andrew.suderman/.travis/travis.sh
