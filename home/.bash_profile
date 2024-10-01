eval "$(/opt/homebrew/bin/brew shellenv)"

source /Users/asuderma/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/asuderma/google-cloud-sdk/path.bash.inc' ]; then . '/Users/asuderma/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/asuderma/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/asuderma/google-cloud-sdk/completion.bash.inc'; fi
