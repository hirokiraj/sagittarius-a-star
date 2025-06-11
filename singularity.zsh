#!/bin/zsh

install_cli()
{
    brew install asdf btop git imagemagick ncdu neovim oh-my-posh pre-commit stow tig tmux vim wget ripgrep lua;

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    brew install koekeishiya/formulae/yabai;
    brew install koekeishiya/formulae/skhd;
}

brew_install_casks()
{
    brew install --cask alacritty bruno firefox google-chrome karabiner-elements keepassxc keepingyouawake opera signal slack discord spotify visual-studio-code logitune bluesnooze;
}

start_services()
{
    yabai --start-service
    skhd --start-service
}

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
echo "Phase 1: installing CLI packages"
echo "  Do you want to install all CLI and ricing packages?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) install_cli; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 2: installing casks"
echo "  Do you want to install all casks?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) brew_install_casks; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 3: symlinking dotfiles"
echo "  Do you want to symlink all dotfiles using stow?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) `cd ~/sagittarius-a-star && stow alacritty asdf karabiner vim zsh nvim oh-my-posh tmux tmux-powerline yabai skhd`; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 4: starting services"
echo "  Following services are about to be started"
echo "    yabai (tiled window manager)"
echo "    skhd (keybindings daemon used for controlling yabai)"
echo "  Do you want to start services?"
select yn in "Yes" "No" "Cancel"; do
    case $yn in
        Yes ) start_services; break;;
        No ) break;;
        Cancel ) exit;;
    esac
done
echo "---------------------------------------------------"
echo "Phase 5: manual installations"
echo "  Consider installing these manually:"
echo "    Kensington Works (trackball control) - https://www.kensington.com/software/kensingtonworks/"
echo "    Firefox Developer Edition (another browser, for secondary accounts) - https://www.mozilla.org/en-US/firefox/developer/"
echo "  Tmux requires installing tpm and sourcing all the plugins:"
echo "    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
echo "    tmux"
echo "    Press ctrl-b I (capital i)"
echo "---------------------------------------------------"
echo "That's it im done!"
echo "GL&HF using new one!"
echo "Installer out..."
