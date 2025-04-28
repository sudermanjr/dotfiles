source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
   builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

export FLOX_DISABLE_METRICS=true
if [ -x '/usr/local/bin/flox' ] || [ -x '/usr/bin/flox' ];then
  eval "$(flox activate --dir ~)"
fi

if [ -f '/opt/homebrew/bin/brew' ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/user/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/user/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/user/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/user/Downloads/google-cloud-sdk/completion.bash.inc'; fi
