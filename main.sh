RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo scriptzinho feito pela mimizita
mkfs.fat -F 32 /dev/mmcblk*p1
mkfs.btrfs -f /dev/mmcblk*p2
mount /dev/mmcblk*p2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/mmcblk*p1 /mnt/boot/efi
echo -e '\033[0;32m'montado com sucesso, partindo para instalação do pacotes...'\033[0m'
pacstrap -K /mnt base base-devel linux linux-lts grub efibootmgr pipewire pipewire-jack pipewire-pulse xfce4 xfce4-goodies mesa firefox networkmanager bluez bluez-utils blueman flatpak sddm vulkan-mesa-layers lib32-mesa lib32-openal lib32-vulkan-mesa-layers lib32-vulkan-intel vulkan-intel hyfetch fastfetch zram-generator
cd /mnt
genfstab -U /mnt >> /mnt/etc/fstab
cd /mnt
wget https://raw.githubusercontent.com/Y3strr/arch-manual-install-intel/refs/heads/main/chroot.sh
clear
echo parte 1 completa
echo -e escreva '\033[0;32m'bash chroot.sh '\033[0m'e aperte enter para continuar
arch-chroot /mnt
echo retire o pendrive e reinicie agora
