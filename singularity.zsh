#!/bin/zsh

echo "---------------------------------------------------"
echo "Welcome to hirokiraj new macbook things installer"
echo "Current host is: $(hostname)"
echo "Current user is: $(whoami)"
echo "---------------------------------------------------"
if ! command -v brew &> /dev/null
then
    echo "Brew could not be found"
    echo "Install Homebrew and try again https://brew.sh"
    echo "Aborting..."
    exit 1
fi
echo "---------------------------------------------------"
echo "Phase 1: installing base packages"
echo "  Following packages are about to be installed:"
echo "    asdf (global versions manager)"
echo "    btop (activity monitor)"
echo "    git (revision control system)"
echo "    imagemagick (image manipulation cli tool)"
echo "    ncdu (disk space analyser)"
echo "    neovim (text editor)"
echo "    oh-my-posh (terminal prompt styler)"
echo "    pre-commit (run commands as git hooks)" 
echo "    stow (symlink dotfiles manager)" 
echo "    tig (git repo cli explorer)" 
echo "    tmux (terminal multiplicator)" 
echo "    vim (slightly worse text editor)" 
echo "    wget (internet file fetcher)"
echo "    ripgrep (used by telescope in neovim)"
echo "  Do you wish to install all these packages?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) brew install asdf btop git imagemagick ncdu neovim oh-my-posh pre-commit stow tig tmux vim wget ripgrep; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 2: installing ricing packages (which are really optional)"
echo "  Following packages are about to be installed:"
echo "    cmatrix (terminal matrix like screensaver)"
echo "    neofetch (show fancy system info)"
echo "    pipes-sh (like old windows screensaver but in terminal)"
echo "    tty-clock (nice digital terminal clock)"
echo "  Do you wish to install all of that?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) brew install cmatrix neofetch pipes-sh tty-clock; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 3: installing casks"
echo "  Following applications are about to be installed:"
echo "    alacritty (terminal)"
echo "    bruno (REST client)"
echo "    firefox (main browser)"
echo "    google-chrome (browser potentially for web-dev)"
echo "    karabiner-elements (keyboard remapper)"
echo "    keepassxc (password manager)"
echo "    keepingyouawake (status bar sleep control)"
echo "    ngrok (traffic tunneling)"
echo "    opera (browser for the lulz)"
echo "    signal (comms)"
echo "    slack (comms)"
echo "    discord (comms)"
echo "    spotify (music player)"
echo "    visual-studio-code (for really bad days)"
echo "    docker (containers, as cask to have desktop control)"
echo "    logitune (logitech camera controls)"
echo "    gimp (raster graphics)"
echo "  Do you wish to install all of em?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) brew install --cask alacritty bruno firefox google-chrome karabiner-elements keepassxc keepingyouawake ngrok opera signal slack discord spotify visual-studio-code docker logitune gimp; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 4: manual installations"
echo "  Consider installing these manually as there are no packages/casks:"
echo "    oh-my-zsh (zshell improvements) - https://ohmyz.sh/#install"
echo "    Kensington Works (trackball control) - https://www.kensington.com/software/kensingtonworks/"
echo "    Firefox Developer Edition (another browser, for secondary accounts) - https://www.mozilla.org/en-US/firefox/developer/"
echo "---------------------------------------------------"
echo "That's it im done!"
echo "GL&HF using new one!"
echo "Installer out..."
