# sudermanjr dotfiles

Lots of gems here that I use daily, I will try to list some of them.

* Brewfile - https://github.com/Homebrew/homebrew-bundle
* fzf - https://github.com/junegunn/fzf
* tmux - https://github.com/tmux/tmux
* homeschick - https://github.com/andsens/homeshick
* starship - https://starship.rs
* asdf - https://asdf-vm.com/#/

## Getting Started

1. Fork this repo
1. Install Homeschick - `git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick`
1. Clone Dotfiles - `$HOME/.homesick/repos/homeshick/bin/homeshick clone USERNAME/dotfiles`
1. Install Software - `cd && brew bundle && asdf install`

## Other Notes

### Homebrew Usage

I have considerably reduced my usage of Homebrew in favor of asdf. Homebrew makes switching between version really hard, so I have elected to only use it for things that I only ever want the latest version of.
