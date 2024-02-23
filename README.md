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
Clone this repo to `$HOME`

`cd $HOME && git clone git@github.com:hirokiraj/sagittarius-a-star.git`

then prepare directory structure in your home

`mkdir $HOME/.config && mkdir $HOME/.config/karabiner`

and then symlink all dotfiles to their corresponding locations

`ln -s $HOME/sagittarius-a-star/zsh/.zshrc $HOME/.zshrc && ln -s $HOME/sagittarius-a-star/vim/.vimrc $HOME/.vimrc && ln -s $HOME/sagittarius-a-star/p10k/.p10k.zsh $HOME/.p10k.zsh && ln -s $HOME/sagittarius-a-star/karabiner/.config/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json && $HOME/sagittarius-a-star/asdf/.asdfrc $HOME/.asdfrc`

Restart all terminal sessions and your are good to go


