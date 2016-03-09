mv /etc/locale.gen{,.orig}
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
locale > /etc/locale.conf
ln -s /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime
pacman -S ntp
ntpdate -s pool.ntp.org
hwclock -w -u
echo "dev" > /etc/hostname
mkinitcpio -p linux
pacman -S grub
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --recheck /dev/sda
exit

