fdisk -lu disk.img

# get any offset
# offset = sector size * start

sudo losetup -o $offset /dev/loop9 disk.img

sudo fsck -fv /dev/loop0
sudo mount /dev/loop0 /mnt/image
