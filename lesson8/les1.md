sergey@ubuntu290726:~$ df -hT
Filesystem                        Type      Size  Used Avail Use% Mounted on
tmpfs                             tmpfs     667M  880K  666M   1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv ext4       19G  6.6G   11G  39% /
tmpfs                             tmpfs     1.7G     0  1.7G   0% /dev/shm
efivarfs                          efivarfs  256K   55K  197K  22% /sys/firmware/efi/efivars
none                              tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none                              tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
tmpfs                             tmpfs     1.7G     0  1.7G   0% /tmp
/dev/vda2                         ext4      2.0G  131M  1.7G   8% /boot
/dev/vda1                         vfat      1.1G  6.4M  1.1G   1% /boot/efi
none                              tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
none                              tmpfs     1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs                             tmpfs     334M  8.0K  334M   1% /run/user/1000
sergey@ubuntu290726:~$ sudo vgs
[sudo: authenticate] Password:         
  VG        #PV #LV #SN Attr   VSize   VFree 
  ubuntu-vg   1   1   0 wz--n- <36.95g 18.47g
sergey@ubuntu290726:~$ sudo pvs
  PV         VG        Fmt  Attr PSize   PFree 
  /dev/vda3  ubuntu-vg lvm2 a--  <36.95g 18.47g
sergey@ubuntu290726:~$ sudo lvs
  LV        VG        Attr       LSize  Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  ubuntu-lv ubuntu-vg -wi-ao---- 18.47g                                                    
sergey@ubuntu290726:~$ sudo vgrename ubuntu-vg newvg
  Volume group "ubuntu-vg" successfully renamed to "newvg"
sergey@ubuntu290726:~$ sudo vgs
  VG    #PV #LV #SN Attr   VSize   VFree 
  newvg   1   1   0 wz--n- <36.95g 18.47g
sergey@ubuntu290726:~$ sudo apt install nano
The following packages were automatically installed and are no longer required:
  linux-headers-7.0.0-14          linux-image-unsigned-7.0.0-14-generic    linux-modules-7.0.0-14-generic  linux-tools-7.0.0-14-generic
  linux-headers-7.0.0-14-generic  linux-main-modules-zfs-7.0.0-14-generic  linux-tools-7.0.0-14
Use 'sudo apt autoremove' to remove them.

Installing:
  nano

Suggested packages:
  hunspell

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 33
  Download size: 289 kB
  Space needed: 893 kB / 11.3 GB available

Get:1 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 nano amd64 8.7.1-1ubuntu0.1 [289 kB]
Fetched 289 kB in 1s (382 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 1.)
debconf: falling back to frontend: Readline
Selecting previously unselected package nano.
(Reading database ... 126794 files and directories currently installed.)
Preparing to unpack .../nano_8.7.1-1ubuntu0.1_amd64.deb ...
Unpacking nano (8.7.1-1ubuntu0.1) ...
Setting up nano (8.7.1-1ubuntu0.1) ...
update-alternatives: using /bin/nano to provide /usr/bin/editor (editor) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group editor) doe
s not exist
update-alternatives: using /bin/nano to provide /usr/bin/pico (pico) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/pico.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group pico) does no
t exist
Scanning processes...                                                                                                                                          
Scanning linux images...                                                                                                                                       

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
sergey@ubuntu290726:~$ sudo nano /etc/fstab 
sergey@ubuntu290726:~$ sudo cat /etc/fstab 
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/ubuntu-vg/ubuntu-lv during curtin installation
/dev/disk/by-id/dm-uuid-LVM-oFMfaGodYopHRbtzNOG9Cqz2dPcQpskscUKokBpP4eD0yuV1jclGQeUNKnOYgZxh / ext4 defaults 0 1
# /boot was on /dev/vda2 during curtin installation
/dev/disk/by-uuid/7d2bbd0a-bf71-4692-87b0-d2158dd0a17e /boot ext4 defaults 0 1
# /boot/efi was on /dev/vda1 during curtin installation
/dev/disk/by-uuid/C9C8-F187 /boot/efi vfat defaults 0 1
/swap.img	none	swap	sw	0	0
sergey@ubuntu290726:~$ sudo nano /etc/fstab 
sergey@ubuntu290726:~$ sudo nano /etc/default/grub
sergey@ubuntu290726:~$ sudo update-grub
/usr/sbin/grub-probe: error: failed to get canonical path of `/dev/mapper/ubuntu--vg-ubuntu--lv'.
sergey@ubuntu290726:~$ sudo vgscan --mknodes
  Found volume group "newvg" using metadata type lvm2
sergey@ubuntu290726:~$ sudo vgchange -ay
  1 logical volume(s) in volume group "newvg" now active
sergey@ubuntu290726:~$ sudo LVM_VG_NAME=newvg update-initramfs -u -k all
update-initramfs: Generating /boot/initrd.img-7.0.0-28-generic
update-initramfs: Generating /boot/initrd.img-7.0.0-14-generic
sergey@ubuntu290726:~$ sudo ln -s /dev/mapper/newvg-ubuntu--lv /dev/mapper/ubuntu--vg-ubuntu--lv
sergey@ubuntu290726:~$ sudo update-grub
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/kdump-tools.cfg'
Generating grub configuration file ...
Found linux image: /boot/vmlinuz-7.0.0-28-generic
Found initrd image: /boot/initrd.img-7.0.0-28-generic
Found linux image: /boot/vmlinuz-7.0.0-14-generic
Found initrd image: /boot/initrd.img-7.0.0-14-generic
Warning: os-prober will not be executed to detect other bootable partitions.
Systems on them will not be added to the GRUB boot configuration.
Check GRUB_DISABLE_OS_PROBER documentation entry.
Adding boot menu entry for UEFI Firmware Settings ...
done
