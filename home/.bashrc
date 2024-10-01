source "$HOME/.homesick/repos/homeshick/homeshick.sh"

export FLOX_DISABLE_METRICS=true
if [ -x '/usr/local/bin/flox' ];then
    eval "$(flox activate --dir ~)"
fi

if [[ -d ${HOME}/.bashrc.d ]]; then
  while read dotd; do
    source "${dotd}"
  done < <(find ${HOME}/.bashrc.d -follow -type f -not -name '*.disabled')
  unset dotd
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/asuderma/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/asuderma/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/asuderma/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/asuderma/Downloads/google-cloud-sdk/completion.bash.inc'; fi
