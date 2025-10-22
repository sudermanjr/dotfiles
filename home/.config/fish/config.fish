if status is-interactive
    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    set -g direnv_fish_mode disable_arrow    # trigger direnv at prompt only, this is similar functionality to the original behavior
    starship init fish | source
    source "$HOME/.homesick/repos/homeshick/homeshick.fish"
    set -gx FLOX_DISABLE_METRICS true
    if test -f /usr/bin/flox
        eval "$(flox activate --dir ~)"
    end

    if test -f /usr/local/go/bin/go
        fish_add_path /usr/local/go/bin
    end

    # The next line updates PATH for the Google Cloud SDK.
    if test -f $HOME/Downloads/google-cloud-sdk/path.fish.inc
        source $HOME/Downloads/google-cloud-sdk/path.fish.inc
    end

    set -gx EDITOR vim
    if test -f $HOME/.cargo/env.fish
        source $HOME/.cargo/env.fish
    end
end
