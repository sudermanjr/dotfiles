source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
   builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

export FLOX_DISABLE_METRICS=true
if [ -x '/usr/local/bin/flox' ];then
    eval "$(flox activate --dir ~)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
