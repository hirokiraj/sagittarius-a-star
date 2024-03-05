# Saggitarius-A* - hirokiraj's dotfiles collection
```...Sagittarius A* is mostly dormant and only occasionally absorbs gas or dust, but nonetheless has an estimated mass millions times that of our sun...```

## Initial requirements
This repo contains a set of dotfile configurations that by default require:
- working on Mac OS
- running [Alacritty](https://alacritty.org/) terminal emulator with [tmux](https://github.com/tmux/tmux/wiki)
- using zsh as a default system shell
- having [oh-my-zsh](https://ohmyz.sh/) and [powerline10k](https://github.com/romkatv/powerlevel10k) theme installed
- having [karabiner-elements](https://karabiner-elements.pqrs.org/) installed as a keyboard remapper
- using asdf as a languages version manager

## Font
This config will look nice with a NerdFont installed.
Any font from [nerdfonts.com](https://www.nerdfonts.com/) should do, but I am using Meslo LG, in particual:
- medium line gap variant so MesloLGM
- mono variant (standard uses 1.5 chars glyps, mono enforces glyps to take 1 space)
- slashed zero variant (not a dotted-zero subvariant)
- I install all four (bold, regualar, italic, bold-italic) types, but use mostly a regular one

## Env setup
Clone this repo to home directory

`cd ~ && git clone git@github.com:hirokiraj/sagittarius-a-star.git`

Install GNU stow
`brew install stow`

And use stow to symlink all configs as if these are stow packages
`cd ~/sagittarius-a-star && stow alacritty asdf karabiner p10k vim zsh`

Your are good to go!

