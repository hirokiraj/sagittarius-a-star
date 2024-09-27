# Saggitarius-A* - hirokiraj's dotfiles collection
```...Sagittarius A* is mostly dormant and only occasionally absorbs gas or dust, but nonetheless has an estimated mass millions times that of our sun...```

## What's included
This repo contains a set of dotfile configurations that are working with mac OS 14 Sonoma
Apps for which configuration is included:
- [Alacritty](https://alacritty.org/) terminal with [zsh](https://www.zsh.org/) shell that uses [oh-my-zsh](https://ohmyz.sh/), [oh-my-posh](https://ohmyposh.dev) prompt and [tmux](https://github.com/tmux/tmux/wiki)
- [karabiner-elements](https://karabiner-elements.pqrs.org/) keyboard remapper
- [asdf](https://asdf-vm.com/) runtime version manager
- [neovim](https://neovim.io/)

## Installing packages and apps with bootstrap script
`Singluarity` is a script that can be run to guide an installation of most of esential packages and apps (using brew and casks).

Make sure script can be executed: `cd ~/sagittarius-a-star && chmod +x singularity.zsh`

After that run the script with `./singularity.zsh`

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

Install GNU stow if 'singularity.sh' was not used
`brew install stow`

And use stow to symlink all configs as if these are stow packages
`cd ~/sagittarius-a-star && stow alacritty asdf karabiner vim zsh nvim oh-my-posh tmux tmux-powerline`

## Post setup actions
If above setup was successful there are some additional manual steps that need to be done:

**tmux** -> requires installing tpm and sourcing all the plugins mentioned in config with it:

Run `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`, open alacritty, run `tmux` and install plugins with `ctrl-b I` (capital i)

Your are good to go!

