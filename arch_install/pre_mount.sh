systemctl start dhcpcd
pacstrap /mnt base base-devel
pacman-key --init
pacman-key --populate archlinux
genfstab -U -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash
