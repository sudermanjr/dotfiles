#export DEBUG_BASHRC=1

[[ -f ~/.local/share/blesh/ble.sh ]] && source ~/.local/share/blesh/ble.sh

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

[[ -d "$HOME/.atuin/bin" ]] && source $HOME/.atuin/bin/env

if type atuin &>/dev/null; then
  [ $DEBUG_BASHRC ] && echo "$SCRIPT_NAME atuin init bash"
  eval "$(atuin init bash)"
fi


SCRIPT_NAME=$(basename ${BASH_SOURCE[0]})
[ $DEBUG_BASHRC ] && echo "$SCRIPT_NAME start"

if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
   builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

export FLOX_DISABLE_METRICS=true
#if [ -x '/usr/local/bin/flox' ] || [ -x '/usr/bin/flox' ];then
#  eval "$(flox activate --dir ~)"
#fi

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

if [[ -d "${HOME}/.bashrc.d" ]]; then
  while read dotd; do
    [ $DEBUG_BASHRC ] && echo "$SCRIPT_NAME sourcing ${dotd}"
    source "${dotd}"
  done < <(find ${HOME}/.bashrc.d -follow -type f -not -name '*.disabled')
  unset dotd
fi

. "$HOME/.atuin/bin/env"
