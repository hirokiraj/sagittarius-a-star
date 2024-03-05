# Saggitarius-A* - hirokiraj's dotfiles collection
```...Sagittarius A* is mostly dormant and only occasionally absorbs gas or dust, but nonetheless has an estimated mass millions times that of our sun...```

## Initial requirements
This repo contains a set of dotfile configurations that by default require:
- working on Mac OS
- running [iTerm2](https://iterm2.com/) terminal emulator
- using zsh as a default system shell
- having [oh-my-zsh](https://ohmyz.sh/) and [powerline10k](https://github.com/romkatv/powerlevel10k) theme installed
- having [karabiner-elements](https://karabiner-elements.pqrs.org/) installed as a keyboard remapper
- using asdf as a languages version manager

## Font
Main terminal font used in Iterm2 for this setup is MesloLGS NF (NerdFont), you should install [all available variants from powerlevel10k repo](https://github.com/romkatv/dotfiles-public/tree/master/.local/share/fonts/NerdFonts)

## Env setup
Clone this repo to home directory

`cd ~ && git clone git@github.com:hirokiraj/sagittarius-a-star.git`

Install GNU stow
`brew install stow`

And use stow to symlink all configs as if these are stow packages
`cd ~/sagittarius-a-star && stow asdf karabiner p10k vim zsh`

Restart all terminal sessions and your are good to go!

