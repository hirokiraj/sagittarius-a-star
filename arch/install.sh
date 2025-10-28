#!/bin/sh

sudo sed -i '/\[multilib\]/,/Include/ s/^#//' /etc/pacman.conf
sudo pacman -Sy
sudo pacman -S --noconfirm --needed reflector
sudo reflector --country Poland --latest 5 --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -S --needed --noconfirm base-devel git mesa vulkan-radeon lib32-mesa lib32-vulkan-radeon steam lutris gamemode lib32-gamemode cosmic bluez bluez-utils btop imagemagick ncdu neovim vim stow tig tmux ripgrep zsh alacritty firefox firefox-developer-edition keepassxc discord openrgb ntfs-3g os-prober

git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay && makepkg -si --noconfirm
yay --version
cd ~ && rm -rf /tmp/yay

yay -S --needed --noconfirm protonplus heroic-games-launcher-bin mangohud lib32-mangohud xpadneo-dkms asdf-vm oh-my-posh spotify

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo chsh -s $(which zsh) hirokiraj

git config --global core.editor "nvim -f"

cd ~ && git clone https://github.com/hirokiraj/sagittarius-a-star.git
rm .zshrc
cd ~/sagittarius-a-star && stow alacritty asdf vim zsh nvim oh-my-posh tmux tmux-powerline
mkdir ~/.config/discord && echo “{\n \”SKIP_HOST_UPDATE\”: true\n}” >~/.config/discord/settings.json

sudo mkdir /mnt/zangetsu /mnt/shared_data
echo "/dev/nvme1n1p3 /mnt/zangetsu ntfs-3g nofail 0 0" | sudo tee -a /etc/fstab
echo "/dev/nvme0n1p2 /mnt/shared_data ntfs-3g nofail 0 0" | sudo tee -a /etc/fstab
sed -i '$i\    Path(“/mnt/shared_data”),' ~/.config/cosmic/com.system76.CosmicFiles/v1/favorites
sed -i '$i\    Path(“/mnt/zangetsu”),' ~/.config/cosmic/com.system76.CosmicFiles/v1/favorites

sudo mkdir /lib/firmware/edid
sudo cp ~/sagittarius-a-star/arch/dp-edid.bin /lib/firmware/edid/dp-edid.bin
sudo cp ~/sagittarius-a-star/arch/hdmi-edid.bin /lib/firmware/edid/hdmi-edid.bin
sudo sed -i '/^GRUB_CMDLINE_LINUX=/ s/"$/ drm.edid_firmware=DP-3:edid\/dp-edid.bin,HDMI-A-1:edid\/hdmi-edid.bin"/' /etc/default/grub
sudo sed -i '/^\s*#\?GRUB_DISABLE_OS_PROBER=/c\GRUB_DISABLE_OS_PROBER=false' /etc/default/grub ||
  echo 'GRUB_DISABLE_OS_PROBER=false' | sudo tee -a /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo sed -i '/^FILES=/ s/)/ \/lib\/firmware\/edid\/dp-edid.bin \/lib\/firmware\/edid\/hdmi-edid.bin)/' /etc/mkinitcpio.conf
sudo mkinitcpio -P

sudo systemctl enable bluetooth.service
sudo systemctl enable cosmic-greeter.service

echo “Done, restarting in 5s”
sleep 5
sudo reboot now
