# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE=true

plugins=(asdf bundler colored-man-pages colorize command-not-found dotenv rails rake)

source $ZSH/oh-my-zsh.sh

# oh-my-posh configuration
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/hirokiraj_catppuccin_frappe.omp.toml)"

# asdf script execution
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# personal aliases
alias g="git status"
