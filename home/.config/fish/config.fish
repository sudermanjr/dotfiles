if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx FLOX_DISABLE_METRICS true
    if test -f /usr/local/bin/flox
        eval "$(flox activate -s --dir ~)"
    end
end
