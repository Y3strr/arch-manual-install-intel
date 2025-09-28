ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc
rm /etc/locale.gen
echo pt_BR.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
echo LANG=pt_BR.UTF-8 >> /etc/locale.conf
echo KEYMAP=br-abnt2 >> /etc/vconsole.conf
echo ArchLinux >> /etc/hostname
clear
echo agora é nescessário escolher uma senha para admin
echo recomendo que escolha uma senha fácil
echo como por exemplo, data de aniversário com 6 digitos
echo ex: 040206
passwd
useradd henry
echo agora é nescessário escolher uma senha para seu usuário
echo recomendo que escolha uma senha fácil
echo como por exemplo, data de aniversário com 6 digitos
echo ex: 040206
echo iremos fazer disso uma conta de administrador depois...
passwd henry
mkdir /home/henry
chown henry /home/henry
chmod 777 /home/henry
grub-install --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
