if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx FLOX_DISABLE_METRICS true
    if test -f /usr/local/bin/flox
        eval "$(flox activate --dir ~)"
    end
end

if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end
