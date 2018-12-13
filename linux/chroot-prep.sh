echo "setting up mounts..."
   mkdir /target
   mount /dev/sda3 /target
   mount /dev/sda1 /target/boot
   mount --bind /proc /target/proc
   mount --bind /dev /target/dev
   mount --bind /sys /target/sys

echo "ready to:"
echo "  chroot /target /bin/bash"
