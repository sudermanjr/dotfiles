source "$HOME/.homesick/repos/homeshick/homeshick.sh"

if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
   builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

export FLOX_DISABLE_METRICS=true
if [ -x '/usr/local/bin/flox' ];then
    eval "$(flox activate --dir ~)"
fi
