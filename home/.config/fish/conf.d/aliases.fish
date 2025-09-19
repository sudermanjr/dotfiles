alias cat='bat --paging=never'

# ls
function ll
    eza -l --git --no-permissions -h $argv
end

function ls
    eza
end

# Containers
alias d=docker
alias k=kubectl


alias watch='watch -xc'

# Disk space
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias ducks='du -cmxhs * --exclude=/home --exclude=/proc --exclude=/mnt | sort -h'

# Sudo stuff
function sudo
  command sudo -E $argv
end

function clean
    docker system prune -af
    podman system prune -af
    set -e AWS_DEFAULT_REGION
    set -e AWS_SECRET_ACCESS_KEY
    set -e AWS_REGION
    set -e AWS_ACCESS_KEY_ID
    set -e AWS_SESSION_TOKEN
end

# Git
alias gitlog="git log --pretty='format:%H %G? %GS %GK %aN  %s' --reverse | tail; echo"

function gitreleaselog
    set CURRENT $(git rev-parse HEAD)
    if [ -z "$1" ]
      set LAST_TAG $(git describe --tags --abbrev=0 $CURRENT^)
    else
      set LAST_TAG $1
    end
    printf "\nChanges since $LAST_TAG:\n\n"
    git log --pretty='format:%h %s' --reverse $LAST_TAG..HEAD
end

function gitclean
    git fetch --prune origin
    git remove prune origin
end

function getCert -a host port
    echo | openssl s_client -servername $host -connect $host:$port 2>/dev/null | openssl x509 -text
end

function genload
    echo "Loading $TARGET"
    k6 run ~/load.js -d 60m --vus 10
end

function tf
    terraform $argv
end

function git_lowercase
    for i in *
        git mv $i $(echo $i | tr [:upper:] [:lower:]) --force
    end
end

function swagger
    docker run --rm -it  --user $(id -u):$(id -g) -e GOPATH=$(go env GOPATH):/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger
end

function mfa -a filter
    if type -f ykman >/dev/null 2>&1
        if set -q filter
            ykman oath accounts code | grep -i $filter
        else
            ykman oath accounts code
        end
    end
end

