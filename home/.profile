if [ -x '/usr/local/bin/flox' ] || [ -x '/usr/bin/flox' ];then
    eval "$(flox activate --dir ~)"
fi

. "$HOME/.atuin/bin/env"
