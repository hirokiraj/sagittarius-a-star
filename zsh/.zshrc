export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE=true

plugins=(asdf bundler colored-man-pages colorize command-not-found dotenv rails rake)

source $ZSH/oh-my-zsh.sh

# User configuration

# asdf script execution
. /opt/homebrew/opt/asdf/libexec/asdf.sh
