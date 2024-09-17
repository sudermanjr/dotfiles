source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if [[ -d ${HOME}/.bashrc.d ]]; then
  while read dotd; do
    source "${dotd}"
  done < <(find ${HOME}/.bashrc.d -follow -type f -not -name '*.disabled')
  unset dotd
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/asuderma/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/asuderma/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/asuderma/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/asuderma/Downloads/google-cloud-sdk/completion.bash.inc'; fi


# Load Angular CLI autocompletion.
source <(ng completion script)
