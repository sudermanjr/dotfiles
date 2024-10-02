source "$HOME/.homesick/repos/homeshick/homeshick.sh"

export FLOX_DISABLE_METRICS=true
if [ -x '/usr/local/bin/flox' ];then
    eval "$(flox activate --dir ~)"
fi
