sergey@uchuwi:~/otus/vagrant_demo$ vagrant up
Bringing machine 'default' up with 'libvirt' provider...
==> default: Checking if box 'cloud-image/ubuntu-26.04' version '20260823.0.0' is up to date...
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
==> default: Creating image (snapshot of base box volume).
==> default: Creating domain with the following settings...
==> default:  -- Name:              vagrant_demo_default
==> default:  -- Description:       Source: /home/sergey/otus/vagrant_demo/Vagrantfile
==> default:  -- Domain type:       kvm
==> default:  -- Cpus:              2
==> default:  -- Feature:           acpi
==> default:  -- Feature:           apic
==> default:  -- Feature:           pae
==> default:  -- Clock offset:      utc
==> default:  -- Memory:            1024M
==> default:  -- Base box:          cloud-image/ubuntu-26.04
==> default:  -- Storage pool:      default
==> default:  -- Image(vda):        /var/lib/libvirt/images/vagrant_demo_default.img, virtio, 10G
==> default:  -- Disk driver opts:  cache='default'
==> default:  -- Graphics Type:     vnc
==> default:  -- Video Type:        cirrus
==> default:  -- Video VRAM:        16384
==> default:  -- Video 3D accel:    false
==> default:  -- Keymap:            en-us
==> default:  -- TPM Backend:       passthrough
==> default:  -- Disk(vdb):         /var/lib/libvirt/images/vagrant_demo_default-vdb.qcow2, virtio, 1G
==> default:  -- Disk(vdc):         /var/lib/libvirt/images/vagrant_demo_default-vdc.qcow2, virtio, 1G
==> default:  -- INPUT:             type=mouse, bus=ps2
==> default: Creating shared folders metadata...
==> default: Starting domain.
==> default: Domain launching with graphics connection settings...
==> default:  -- Graphics Port:      5900
==> default:  -- Graphics IP:        127.0.0.1
==> default:  -- Graphics Password:  Not defined
==> default:  -- Graphics Websocket: 5700
==> default: Waiting for domain to get an IP address...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 192.168.121.66:22
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection refused. Retrying...
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Setting hostname...
==> default: Forwarding ports...
==> default: 80 (guest) => 8080 (host) (adapter eth0)
==> default: Running provisioner: shell...
    default: Running: inline script
    default: Hit:1 http://archive.ubuntu.com/ubuntu resolute InRelease
    default: Get:2 http://security.ubuntu.com/ubuntu resolute-security InRelease [137 kB]
    default: Get:3 http://security.ubuntu.com/ubuntu resolute-security/main amd64 Packages [471 kB]
    default: Get:4 http://archive.ubuntu.com/ubuntu resolute-updates InRelease [137 kB]
    default: Get:5 http://archive.ubuntu.com/ubuntu resolute-backports InRelease [137 kB]
    default: Get:6 http://archive.ubuntu.com/ubuntu resolute/universe amd64 Packages [16.0 MB]
    default: Get:7 http://security.ubuntu.com/ubuntu resolute-security/main Translation-en [109 kB]
    default: Get:8 http://security.ubuntu.com/ubuntu resolute-security/main amd64 Components [46.6 kB]
    default: Get:9 http://security.ubuntu.com/ubuntu resolute-security/universe amd64 Packages [171 kB]
    default: Get:10 http://security.ubuntu.com/ubuntu resolute-security/universe Translation-en [53.8 kB]
    default: Get:11 http://security.ubuntu.com/ubuntu resolute-security/universe amd64 Components [43.4 kB]
    default: Get:12 http://archive.ubuntu.com/ubuntu resolute/universe Translation-en [6329 kB]
    default: Get:13 http://security.ubuntu.com/ubuntu resolute-security/universe amd64 c-n-f Metadata [3552 B]
    default: Get:14 http://security.ubuntu.com/ubuntu resolute-security/restricted amd64 Packages [397 kB]
    default: Get:15 http://archive.ubuntu.com/ubuntu resolute/universe amd64 Components [4556 kB]
    default: Get:16 http://archive.ubuntu.com/ubuntu resolute/universe amd64 c-n-f Metadata [313 kB]
    default: Get:17 http://archive.ubuntu.com/ubuntu resolute/multiverse amd64 Packages [290 kB]
    default: Get:18 http://archive.ubuntu.com/ubuntu resolute/multiverse Translation-en [127 kB]
    default: Get:19 http://archive.ubuntu.com/ubuntu resolute/multiverse amd64 Components [50.0 kB]
    default: Get:20 http://archive.ubuntu.com/ubuntu resolute/multiverse amd64 c-n-f Metadata [8276 B]
    default: Get:21 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 Packages [601 kB]
    default: Get:22 http://archive.ubuntu.com/ubuntu resolute-updates/main Translation-en [142 kB]
    default: Get:23 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 Components [97.8 kB]
    default: Get:24 http://archive.ubuntu.com/ubuntu resolute-updates/universe amd64 Packages [268 kB]
    default: Get:25 http://archive.ubuntu.com/ubuntu resolute-updates/universe Translation-en [88.3 kB]
    default: Get:26 http://archive.ubuntu.com/ubuntu resolute-updates/universe amd64 Components [188 kB]
    default: Get:27 http://archive.ubuntu.com/ubuntu resolute-updates/universe amd64 c-n-f Metadata [4704 B]
    default: Get:28 http://archive.ubuntu.com/ubuntu resolute-updates/restricted amd64 Packages [407 kB]
    default: Get:29 http://archive.ubuntu.com/ubuntu resolute-updates/restricted Translation-en [79.5 kB]
    default: Get:30 http://archive.ubuntu.com/ubuntu resolute-updates/multiverse amd64 Packages [11.3 kB]
    default: Get:31 http://archive.ubuntu.com/ubuntu resolute-updates/multiverse Translation-en [3032 B]
    default: Get:32 http://archive.ubuntu.com/ubuntu resolute-updates/multiverse amd64 Components [216 B]
    default: Get:33 http://archive.ubuntu.com/ubuntu resolute-updates/multiverse amd64 c-n-f Metadata [256 B]
    default: Get:34 http://archive.ubuntu.com/ubuntu resolute-backports/main amd64 Components [212 B]
    default: Get:35 http://archive.ubuntu.com/ubuntu resolute-backports/main amd64 c-n-f Metadata [112 B]
    default: Get:36 http://archive.ubuntu.com/ubuntu resolute-backports/universe amd64 Packages [3132 B]
    default: Get:37 http://archive.ubuntu.com/ubuntu resolute-backports/universe Translation-en [7988 B]
    default: Get:38 http://archive.ubuntu.com/ubuntu resolute-backports/universe amd64 Components [1056 B]
    default: Get:39 http://archive.ubuntu.com/ubuntu resolute-backports/universe amd64 c-n-f Metadata [116 B]
    default: Get:40 http://archive.ubuntu.com/ubuntu resolute-backports/restricted amd64 Components [216 B]
    default: Get:41 http://archive.ubuntu.com/ubuntu resolute-backports/restricted amd64 c-n-f Metadata [120 B]
    default: Get:42 http://archive.ubuntu.com/ubuntu resolute-backports/multiverse amd64 Components [216 B]
    default: Get:43 http://archive.ubuntu.com/ubuntu resolute-backports/multiverse amd64 c-n-f Metadata [120 B]
    default: Get:44 http://security.ubuntu.com/ubuntu resolute-security/restricted Translation-en [77.8 kB]
    default: Get:45 http://security.ubuntu.com/ubuntu resolute-security/multiverse amd64 Packages [9020 B]
    default: Get:46 http://security.ubuntu.com/ubuntu resolute-security/multiverse Translation-en [2660 B]
    default: Get:47 http://security.ubuntu.com/ubuntu resolute-security/multiverse amd64 Components [212 B]
    default: Get:48 http://security.ubuntu.com/ubuntu resolute-security/multiverse amd64 c-n-f Metadata [120 B]
    default: Fetched 31.3 MB in 17s (1890 kB/s)
    default: Reading package lists...
    default: Reading package lists...
    default: Building dependency tree...
    default: Reading state information...
    default: Solving dependencies...
    default: The following additional packages will be installed:
    default:   nginx-common
    default: Suggested packages:
    default:   fcgiwrap nginx-doc ssl-cert
    default: The following NEW packages will be installed:
    default:   nginx nginx-common
    default: 0 upgraded, 2 newly installed, 0 to remove and 68 not upgraded.
    default: Need to get 655 kB of archives.
    default: After this operation, 1860 kB of additional disk space will be used.
    default: Get:1 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 nginx-common all 1.28.3-2ubuntu1.10 [37.8 kB]
    default: Get:2 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 nginx amd64 1.28.3-2ubuntu1.10 [617 kB]
    default: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    default: Fetched 655 kB in 1s (643 kB/s)
    default: Selecting previously unselected package nginx-common.
(Reading database ... 91400 files and directories currently installed.)
    default: Preparing to unpack .../nginx-common_1.28.3-2ubuntu1.10_all.deb ...
    default: Unpacking nginx-common (1.28.3-2ubuntu1.10) ...
    default: Selecting previously unselected package nginx.
    default: Preparing to unpack .../nginx_1.28.3-2ubuntu1.10_amd64.deb ...
    default: Unpacking nginx (1.28.3-2ubuntu1.10) ...
    default: Setting up nginx-common (1.28.3-2ubuntu1.10) ...
    default: Created symlink '/etc/systemd/system/multi-user.target.wants/nginx.service' → '/usr/lib/systemd/system/nginx.service'.
    default: Setting up nginx (1.28.3-2ubuntu1.10) ...
    default:  * Upgrading binary nginx                                   [ OK ] 
    default: Processing triggers for man-db (2.13.1-1build1) ...
    default: Processing triggers for ufw (0.36.2-9build1) ...
    default: 
    default: Running kernel seems to be up-to-date.
    default: 
    default: No services need to be restarted.
    default: 
    default: No containers need to be restarted.
    default: 
    default: No user sessions are running outdated binaries.
    default: 
    default: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    default: === Обработка диска /dev/vdb для монтирования в /mnt/disk1 ===
    default: Форматирование /dev/vdb в ext4...
    default: mke2fs 1.47.2 (1-Jan-2025)
    default: Discarding device blocks: done         
    default: Creating filesystem with 262144 4k blocks and 65536 inodes
    default: Filesystem UUID: 114eb8fd-bd50-4c78-a12c-a603d48b3d87
    default: Superblock backups stored on blocks:
    default: 	32768, 98304, 163840, 229376
    default: 
    default: Allocating group tables: done
    default: Writing inode tables: done
    default: Creating journal (8192 blocks): done
    default: Writing superblocks and filesystem accounting information: done
    default: 
    default: Создание директории /mnt/disk1...
    default: Добавление записи в /etc/fstab...
    default: Монтирование /dev/vdb в /mnt/disk1...
    default: === Обработка диска /dev/vdc для монтирования в /mnt/disk2 ===
    default: Форматирование /dev/vdc в ext4...
    default: mke2fs 1.47.2 (1-Jan-2025)
    default: Discarding device blocks: done         
    default: Creating filesystem with 262144 4k blocks and 65536 inodes
    default: Filesystem UUID: 0fde6244-61f9-4eb3-9863-6e95531e5316
    default: Superblock backups stored on blocks:
    default: 	32768, 98304, 163840, 229376
    default: 
    default: Allocating group tables: done
    default: Writing inode tables: done
    default: Creating journal (8192 blocks): done
    default: Writing superblocks and filesystem accounting information: done
    default: 
    default: Создание директории /mnt/disk2...
    default: Добавление записи в /etc/fstab...
    default: Монтирование /dev/vdc в /mnt/disk2...
    default: === Все диски успешно настроены! ===
    default: /dev/vdb        974M  280K  906M   1% /mnt/disk1
    default: /dev/vdc        974M  280K  906M   1% /mnt/disk2
sergey@uchuwi:~/otus/vagrant_demo$ vagrant ssh
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
Welcome to Ubuntu 26.04 LTS (GNU/Linux 7.0.0-30-generic x86_64)

 * Documentation:  https://docs.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Sat Sep  5 10:12:02 UTC 2026

  System load:  0.15              Processes:             147
  Usage of /:   22.2% of 8.55GB   Users logged in:       0
  Memory usage: 30%               IPv4 address for ens7: 192.168.121.66
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

72 updates can be applied immediately.
66 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
vda     253:0    0   10G  0 disk 
├─vda1  253:1    0  8.9G  0 part /
├─vda13 253:13   0 1023M  0 part /boot
├─vda14 253:14   0    4M  0 part 
└─vda15 253:15   0  106M  0 part /boot/efi
vdb     253:16   0    1G  0 disk /mnt/disk1
vdc     253:32   0    1G  0 disk /mnt/disk2
$ df -hT
Filesystem     Type   Size  Used Avail Use% Mounted on
tmpfs          tmpfs  192M  1.0M  191M   1% /run
/dev/vda1      ext4   8.6G  2.2G  6.5G  25% /
tmpfs          tmpfs  478M     0  478M   0% /dev/shm
tmpfs          tmpfs  478M  4.0K  478M   1% /tmp
none           tmpfs  1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none           tmpfs  1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/vda13     ext4   989M  108M  814M  12% /boot
/dev/vda15     vfat   105M  6.3M   99M   7% /boot/efi
tmpfs          tmpfs   96M  8.0K   96M   1% /run/user/1000
none           tmpfs  1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
none           tmpfs  1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none           tmpfs  1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
/dev/vdb       ext4   974M  280K  906M   1% /mnt/disk1
/dev/vdc       ext4   974M  280K  906M   1% /mnt/disk2
$ exit 
sergey@uchuwi:~/otus/vagrant_demo$ netstat -tulpn | grep 8080
Команда «netstat» не найдена, но может быть установлена с помощью:
sudo apt install net-tools
sergey@uchuwi:~/otus/vagrant_demo$ ss -tulpn | grep 8080
tcp   LISTEN 0      128                            0.0.0.0:8080       0.0.0.0:*    users:(("ssh",pid=194713,fd=4))     
tcp   LISTEN 0      128                               [::]:8080          [::]:*    users:(("ssh",pid=194713,fd=5))     
sergey@uchuwi:~/otus/vagrant_demo$ 
sergey@uchuwi:~/otus/vagrant_demo$ cat Vagrantfile
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "cloud-image/ubuntu-26.04"
  config.vm.hostname = "nginx-shell"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  config.vm.network "forwarded_port", guest: 80, host: 8080, libvirt_forwardmode: "redir"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Disable the default share of the current code directory. Doing this
  # provides improved isolation between the vagrant box and your host
  # by making sure your Vagrantfile isn't accessible to the vagrant box.
  # If you use this you may want to enable additional shared subfolders as
  # shown above.
  # config.vm.synced_folder ".", "/vagrant", disabled: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provider "libvirt" do |lv|
    lv.driver ="kvm"
    lv.management_network_name = "default"
    lv.memory = 1024
    lv.cpus = 2
    # Добавляем два диска через встроенный синтаксис libvirt
    lv.storage :file, :size => '1G', :device => 'vdb', :type => 'qcow2'
    lv.storage :file, :size => '1G', :device => 'vdc', :type => 'qcow2'
  end

  config.vm.provision "shell", inline: <<-SHELL
    set -e # Останавливать скрипт при любой ошибке

    # 1. Сначала ставим Nginx (ваша прошлая настройка)
    apt-get update
    apt-get install -y nginx
    echo "<h1>Hello from Vagrant</h2>" > /var/www/html/index.html

    # 2. Массивы с дисками и точками монтирования
    DISKS=("vdb" "vdc")
    MOUNTS=("/mnt/disk1" "/mnt/disk2")

    for i in "${!DISKS[@]}"; do
      DISK="${DISKS[$i]}"
      MNT="${MOUNTS[$i]}"
      DEV="/dev/$DISK"

      echo "=== Обработка диска $DEV для монтирования в $MNT ==="

      # Проверяем, есть ли уже файловая система на диске (чтобы не форматировать повторно)
      if ! blkid "$DEV" > /dev/null 2>&1; then
        echo "Форматирование $DEV в ext4..."
        mkfs.ext4 -F "$DEV"
      else
        echo "Диск $DEV уже отформатирован."
      fi

      # Создаем точку монтирования, если её нет
      if [ ! -d "$MNT" ]; then
        echo "Создание директории $MNT..."
        mkdir -p "$MNT"
      fi

      # Получаем уникальный UUID диска
      UUID=$(blkid -o value -s UUID "$DEV")

      # Проверяем, прописан ли уже этот UUID в /etc/fstab
      if ! grep -q "$UUID" /etc/fstab; then
        echo "Добавление записи в /etc/fstab..."
        echo "UUID=$UUID $MNT ext4 defaults,nofail 0 2" >> /etc/fstab
      else
        echo "Запись для $DEV уже существует в /etc/fstab."
      fi

      # Монтируем диск, если он ещё не примонтирован
      if ! mountpoint -q "$MNT"; then
        echo "Монтирование $DEV в $MNT..."
        mount "$MNT"
      fi
    done

    echo "=== Все диски успешно настроены! ==="
    df -h | grep mnt
  SHELL
end
sergey@uchuwi:~/otus/vagrant_demo$ 

