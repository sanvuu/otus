sergey@centos10:~$ hostnamectl
 Static hostname: centos10
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: b422a7465c834067b46fa507f44eb987
         Boot ID: f1c0efa62a2a44b3b32435eb1a3abfd4
  Virtualization: kvm
Operating System: CentOS Stream 10 (Coughlan)     
     CPE OS Name: cpe:/o:centos:centos:10
          Kernel: Linux 6.12.0-260.el10.x86_64
    Architecture: x86-64
 Hardware Vendor: QEMU
  Hardware Model: Standard PC _Q35 + ICH9, 2009_
Firmware Version: 2025.11-3ubuntu7
   Firmware Date: Tue 2026-03-31
    Firmware Age: 4month 3w 1d
sergey@centos10:~$ sudo dnf upgrade
[sudo] пароль для sergey: 
CentOS Stream 10 - BaseOS                                                   14 kB/s |  14 kB     00:01    
CentOS Stream 10 - AppStream                                                16 kB/s |  14 kB     00:00    
CentOS Stream 10 - Extras packages                                          19 kB/s |  15 kB     00:00    
Зависимости разрешены.
Нет действий для выполнения.
Выполнено!
sergey@centos10:~$ sudo dnf install policycoreutils-python-utils
Последняя проверка окончания срока действия метаданных: 0:03:40 назад, Пт 21 авг 2026 21:05:01.
Пакет policycoreutils-python-utils-3.11-1.el10.noarch уже установлен.
Зависимости разрешены.
Нет действий для выполнения.
Выполнено!
sergey@centos10:~$ sestatus
SELinux status:                 enabled
SELinuxfs mount:                /sys/fs/selinux
SELinux root directory:         /etc/selinux
Loaded policy name:             targeted
Current mode:                   enforcing
Mode from config file:          enforcing
Policy MLS status:              enabled
Policy deny_unknown status:     allowed
Memory protection checking:     actual (secure)
Max kernel policy version:      33
sergey@centos10:~$ sudo dnf install nginx
[sudo] пароль для sergey: 
Последняя проверка окончания срока действия метаданных: 0:09:36 назад, Пт 21 авг 2026 21:05:01.
Зависимости разрешены.
===========================================================================================================
 Пакет                         Архитектура       Версия                         Репозиторий          Размер
===========================================================================================================
Установка:
 nginx                         x86_64            2:1.26.3-12.el10               appstream             32 k
Установка зависимостей:
 centos-logos-httpd            noarch            100.5-1.el10                   appstream            854 k
 nginx-core                    x86_64            2:1.26.3-12.el10               appstream            661 k
 nginx-filesystem              noarch            2:1.26.3-12.el10               appstream             11 k

Результат транзакции
===========================================================================================================
Установка  4 Пакета

Объем загрузки: 1.5 M
Объем изменений: 3.2 M
Продолжить? [д/Н]: y
Загрузка пакетов:
(1/4): nginx-1.26.3-12.el10.x86_64.rpm                                      22 kB/s |  32 kB     00:01    
(2/4): nginx-filesystem-1.26.3-12.el10.noarch.rpm                          102 kB/s |  11 kB     00:00    
(3/4): nginx-core-1.26.3-12.el10.x86_64.rpm                                187 kB/s | 661 kB     00:03    
(4/4): centos-logos-httpd-100.5-1.el10.noarch.rpm                          213 kB/s | 854 kB     00:04    
-----------------------------------------------------------------------------------------------------------
Общий размер                                                               318 kB/s | 1.5 MB     00:04     
Проверка транзакции
Проверка транзакции успешно завершена.
Идет проверка транзакции
Тест транзакции проведен успешно.
Выполнение транзакции
  Подготовка       :                                                                                   1/1 
  Запуск скриптлета: nginx-filesystem-2:1.26.3-12.el10.noarch                                          1/4 
  Установка        : nginx-filesystem-2:1.26.3-12.el10.noarch                                          1/4 
  Установка        : nginx-core-2:1.26.3-12.el10.x86_64                                                2/4 
  Установка        : centos-logos-httpd-100.5-1.el10.noarch                                            3/4 
  Установка        : nginx-2:1.26.3-12.el10.x86_64                                                     4/4 
  Запуск скриптлета: nginx-2:1.26.3-12.el10.x86_64                                                     4/4 

Установлен:
  centos-logos-httpd-100.5-1.el10.noarch              nginx-2:1.26.3-12.el10.x86_64                        
  nginx-core-2:1.26.3-12.el10.x86_64                  nginx-filesystem-2:1.26.3-12.el10.noarch             

Выполнено!
sergey@centos10:~$ sudo systemctl status nginx.service 
○ nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: inactive (dead)
sergey@centos10:~$ sudo systemctl start nginx.service 
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 21:17:52 MSK; 1s ago
 Invocation: 67cc941c20b94355aaa388e69a73498e
    Process: 5292 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 5294 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 5295 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 5297 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.4M)
        CPU: 39ms
     CGroup: /system.slice/nginx.service
             ├─5297 "nginx: master process /usr/sbin/nginx"
             ├─5298 "nginx: worker process"
             └─5299 "nginx: worker process"

авг 21 21:17:51 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 21:17:52 centos10 nginx[5294]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 21:17:52 centos10 nginx[5294]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 21:17:52 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo systemctl enable nginx.service 
Created symlink '/etc/systemd/system/multi-user.target.wants/nginx.service' → '/usr/lib/systemd/system/nginx.service'.
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 21:17:52 MSK; 14s ago
 Invocation: 67cc941c20b94355aaa388e69a73498e
   Main PID: 5297 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.4M)
        CPU: 39ms
     CGroup: /system.slice/nginx.service
             ├─5297 "nginx: master process /usr/sbin/nginx"
             ├─5298 "nginx: worker process"
             └─5299 "nginx: worker process"

авг 21 21:17:51 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 21:17:52 centos10 nginx[5294]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 21:17:52 centos10 nginx[5294]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 21:17:52 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo nano /etc/nginx/
conf.d/                 fastcgi_params.default  nginx.conf              uwsgi_params.default
default.d/              koi-utf                 nginx.conf.default      win-utf
fastcgi.conf            koi-win                 scgi_params             
fastcgi.conf.default    mime.types              scgi_params.default     
fastcgi_params          mime.types.default      uwsgi_params            
sergey@centos10:~$ sudo nano /etc/nginx/nginx.conf
sergey@centos10:~$ sudo systemctl restart nginx.service 
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
sergey@centos10:~$ getenforce 
Enforcing
sergey@centos10:~$ id -Z | grep nginx
sergey@centos10:~$ id -Z | grep "nginx"
sergey@centos10:~$ id -Z
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
sergey@centos10:~$ ps -eZ
LABEL                               PID TTY          TIME CMD
system_u:system_r:init_t:s0           1 ?        00:00:03 systemd
system_u:system_r:kernel_t:s0         2 ?        00:00:00 kthreadd
system_u:system_r:kernel_t:s0         3 ?        00:00:00 pool_workqueue_release
system_u:system_r:kernel_t:s0         4 ?        00:00:00 kworker/R-rcu_gp
system_u:system_r:kernel_t:s0         5 ?        00:00:00 kworker/R-sync_wq
system_u:system_r:kernel_t:s0         6 ?        00:00:00 kworker/R-kvfree_rcu_reclaim
system_u:system_r:kernel_t:s0         7 ?        00:00:00 kworker/R-slub_flushwq
system_u:system_r:kernel_t:s0         8 ?        00:00:00 kworker/R-netns
system_u:system_r:kernel_t:s0         9 ?        00:00:00 kworker/0:0-cgroup_free
system_u:system_r:kernel_t:s0        10 ?        00:00:00 kworker/0:0H-events_highpri
system_u:system_r:kernel_t:s0        12 ?        00:00:00 kworker/u8:0-events_unbound
system_u:system_r:kernel_t:s0        13 ?        00:00:00 kworker/R-mm_percpu_wq
system_u:system_r:kernel_t:s0        14 ?        00:00:00 kworker/u8:1-netns
system_u:system_r:kernel_t:s0        15 ?        00:00:00 ksoftirqd/0
system_u:system_r:kernel_t:s0        16 ?        00:00:00 rcu_preempt
system_u:system_r:kernel_t:s0        17 ?        00:00:00 rcu_exp_par_gp_kthread_worker/0
system_u:system_r:kernel_t:s0        18 ?        00:00:00 rcu_exp_gp_kthread_worker
system_u:system_r:kernel_t:s0        19 ?        00:00:00 migration/0
system_u:system_r:kernel_t:s0        20 ?        00:00:00 idle_inject/0
system_u:system_r:kernel_t:s0        21 ?        00:00:00 cpuhp/0
system_u:system_r:kernel_t:s0        22 ?        00:00:00 cpuhp/1
system_u:system_r:kernel_t:s0        23 ?        00:00:00 idle_inject/1
system_u:system_r:kernel_t:s0        24 ?        00:00:00 migration/1
system_u:system_r:kernel_t:s0        25 ?        00:00:00 ksoftirqd/1
system_u:system_r:kernel_t:s0        27 ?        00:00:00 kworker/1:0H-events_highpri
system_u:system_r:kernel_t:s0        29 ?        00:00:01 kworker/u10:0-events_unbound
system_u:system_r:kernel_t:s0        31 ?        00:00:02 kworker/u10:1-flush-253:0
system_u:system_r:kernel_t:s0        32 ?        00:00:00 kdevtmpfs
system_u:system_r:kernel_t:s0        33 ?        00:00:00 kworker/R-inet_frag_wq
system_u:system_r:kernel_t:s0        34 ?        00:00:00 rcu_tasks_kthread
system_u:system_r:kernel_t:s0        35 ?        00:00:00 rcu_tasks_rude_kthread
system_u:system_r:kernel_t:s0        36 ?        00:00:00 rcu_tasks_trace_kthread
system_u:system_r:kernel_t:s0        38 ?        00:00:00 kauditd
system_u:system_r:kernel_t:s0        39 ?        00:00:00 khungtaskd
system_u:system_r:kernel_t:s0        40 ?        00:00:00 oom_reaper
system_u:system_r:kernel_t:s0        42 ?        00:00:00 kworker/R-writeback
system_u:system_r:kernel_t:s0        43 ?        00:00:00 kcompactd0
system_u:system_r:kernel_t:s0        44 ?        00:00:00 ksmd
system_u:system_r:kernel_t:s0        45 ?        00:00:00 khugepaged
system_u:system_r:kernel_t:s0        46 ?        00:00:00 kworker/R-cryptd
system_u:system_r:kernel_t:s0        47 ?        00:00:00 kworker/R-kblockd
system_u:system_r:kernel_t:s0        48 ?        00:00:00 kworker/R-blkcg_punt_bio
system_u:system_r:kernel_t:s0        49 ?        00:00:00 kworker/R-kintegrityd
system_u:system_r:kernel_t:s0        50 ?        00:00:00 irq/9-acpi
system_u:system_r:kernel_t:s0        52 ?        00:00:00 kworker/R-tpm_dev_wq
system_u:system_r:kernel_t:s0        53 ?        00:00:00 kworker/R-md_bitmap
system_u:system_r:kernel_t:s0        54 ?        00:00:00 kworker/R-md
system_u:system_r:kernel_t:s0        55 ?        00:00:00 kworker/R-edac-poller
system_u:system_r:kernel_t:s0        56 ?        00:00:00 watchdogd
system_u:system_r:kernel_t:s0        57 ?        00:00:00 kswapd0
system_u:system_r:kernel_t:s0        74 ?        00:00:00 kworker/R-kthrotld
system_u:system_r:kernel_t:s0        79 ?        00:00:00 irq/24-aerdrv
system_u:system_r:kernel_t:s0        80 ?        00:00:00 irq/25-aerdrv
system_u:system_r:kernel_t:s0        81 ?        00:00:00 irq/26-aerdrv
system_u:system_r:kernel_t:s0        82 ?        00:00:00 irq/27-aerdrv
system_u:system_r:kernel_t:s0        83 ?        00:00:00 irq/28-aerdrv
system_u:system_r:kernel_t:s0        84 ?        00:00:00 irq/29-aerdrv
system_u:system_r:kernel_t:s0        85 ?        00:00:00 irq/30-aerdrv
system_u:system_r:kernel_t:s0        86 ?        00:00:00 irq/31-aerdrv
system_u:system_r:kernel_t:s0        87 ?        00:00:00 irq/32-aerdrv
system_u:system_r:kernel_t:s0        88 ?        00:00:00 irq/33-aerdrv
system_u:system_r:kernel_t:s0        89 ?        00:00:00 irq/34-aerdrv
system_u:system_r:kernel_t:s0        90 ?        00:00:00 irq/35-aerdrv
system_u:system_r:kernel_t:s0        91 ?        00:00:00 irq/36-aerdrv
system_u:system_r:kernel_t:s0        92 ?        00:00:00 irq/37-aerdrv
system_u:system_r:kernel_t:s0        93 ?        00:00:00 kworker/R-acpi_thermal_pm
system_u:system_r:kernel_t:s0        94 ?        00:00:00 hwrng
system_u:system_r:kernel_t:s0        95 ?        00:00:00 kworker/R-kmpath_rdacd
system_u:system_r:kernel_t:s0        96 ?        00:00:00 kworker/R-kaluad
system_u:system_r:kernel_t:s0        98 ?        00:00:00 kworker/R-mld
system_u:system_r:kernel_t:s0        99 ?        00:00:00 kworker/R-ipv6_addrconf
system_u:system_r:kernel_t:s0       104 ?        00:00:00 kworker/R-kstrp
system_u:system_r:kernel_t:s0       111 ?        00:00:00 kworker/u11:0
system_u:system_r:kernel_t:s0       112 ?        00:00:00 kworker/u12:0
system_u:system_r:kernel_t:s0       113 ?        00:00:00 kworker/u13:0
system_u:system_r:kernel_t:s0       153 ?        00:00:01 kworker/u9:3-events_unbound
system_u:system_r:kernel_t:s0       163 ?        00:00:01 kworker/u9:4-events_unbound
system_u:system_r:kernel_t:s0       167 ?        00:00:00 kworker/u10:3-events_unbound
system_u:system_r:kernel_t:s0       253 ?        00:00:00 kworker/0:1H-kblockd
system_u:system_r:kernel_t:s0       297 ?        00:00:00 kworker/0:2-events_freezable_pwr_efficient
system_u:system_r:kernel_t:s0       312 ?        00:00:00 kworker/R-kmpathd
system_u:system_r:kernel_t:s0       313 ?        00:00:00 kworker/R-kmpath_handlerd
system_u:system_r:kernel_t:s0       442 ?        00:00:00 kworker/R-iscsi_conn_cleanup
system_u:system_r:kernel_t:s0       446 ?        00:00:00 kworker/R-tls-strp
system_u:system_r:kernel_t:s0       448 ?        00:00:00 kworker/R-cnic_wq
system_u:system_r:kernel_t:s0       449 ?        00:00:00 bnx2i_thread/0
system_u:system_r:kernel_t:s0       450 ?        00:00:00 bnx2i_thread/1
system_u:system_r:kernel_t:s0       560 ?        00:00:00 kworker/1:1H-kblockd
system_u:system_r:kernel_t:s0       629 ?        00:00:00 kworker/R-nvme-wq
system_u:system_r:kernel_t:s0       630 ?        00:00:00 kworker/R-nvme-reset-wq
system_u:system_r:kernel_t:s0       631 ?        00:00:00 kworker/R-nvme-delete-wq
system_u:system_r:kernel_t:s0       633 ?        00:00:00 kworker/R-nvme-auth-wq
system_u:system_r:kernel_t:s0       648 ?        00:00:00 kworker/R-nvme_tcp_wq
system_u:system_r:kernel_t:s0       677 ?        00:00:00 kworker/R-ata_sff
system_u:system_r:kernel_t:s0       687 ?        00:00:00 scsi_eh_0
system_u:system_r:kernel_t:s0       688 ?        00:00:00 kworker/R-scsi_tmf_0
system_u:system_r:kernel_t:s0       689 ?        00:00:00 scsi_eh_1
system_u:system_r:kernel_t:s0       690 ?        00:00:00 kworker/R-scsi_tmf_1
system_u:system_r:kernel_t:s0       691 ?        00:00:00 scsi_eh_2
system_u:system_r:kernel_t:s0       692 ?        00:00:00 kworker/R-scsi_tmf_2
system_u:system_r:kernel_t:s0       694 ?        00:00:00 scsi_eh_3
system_u:system_r:kernel_t:s0       697 ?        00:00:00 kworker/R-scsi_tmf_3
system_u:system_r:kernel_t:s0       698 ?        00:00:00 scsi_eh_4
system_u:system_r:kernel_t:s0       699 ?        00:00:00 kworker/R-scsi_tmf_4
system_u:system_r:kernel_t:s0       700 ?        00:00:00 scsi_eh_5
system_u:system_r:kernel_t:s0       701 ?        00:00:00 kworker/R-scsi_tmf_5
system_u:system_r:kernel_t:s0       760 ?        00:00:00 kworker/R-kdmflush/253:0
system_u:system_r:kernel_t:s0       766 ?        00:00:00 kworker/R-kdmflush/253:1
system_u:system_r:kernel_t:s0       798 ?        00:00:00 kworker/R-xfsalloc
system_u:system_r:kernel_t:s0       799 ?        00:00:00 kworker/R-xfs_mru_cache
system_u:system_r:kernel_t:s0       800 ?        00:00:00 kworker/R-xfs-buf/dm-0
system_u:system_r:kernel_t:s0       801 ?        00:00:00 kworker/R-xfs-conv/dm-0
system_u:system_r:kernel_t:s0       802 ?        00:00:00 kworker/R-xfs-reclaim/dm-0
system_u:system_r:kernel_t:s0       803 ?        00:00:00 kworker/R-xfs-blockgc/dm-0
system_u:system_r:kernel_t:s0       804 ?        00:00:00 kworker/R-xfs-inodegc/dm-0
system_u:system_r:kernel_t:s0       805 ?        00:00:00 kworker/R-xfs-log/dm-0
system_u:system_r:kernel_t:s0       806 ?        00:00:00 kworker/R-xfs-cil/dm-0
system_u:system_r:kernel_t:s0       807 ?        00:00:00 xfsaild/dm-0
system_u:system_r:syslogd_t:s0      895 ?        00:00:00 systemd-journal
system_u:system_r:udev_t:s0-s0:c0.c1023 941 ?    00:00:00 systemd-udevd
system_u:system_r:kernel_t:s0       999 ?        00:00:00 card1-crtc0
system_u:system_r:kernel_t:s0      1024 ?        00:00:00 kworker/R-xfs-buf/vda2
system_u:system_r:kernel_t:s0      1025 ?        00:00:00 kworker/R-xfs-conv/vda2
system_u:system_r:kernel_t:s0      1026 ?        00:00:00 kworker/R-xfs-reclaim/vda2
system_u:system_r:kernel_t:s0      1027 ?        00:00:00 kworker/R-xfs-blockgc/vda2
system_u:system_r:kernel_t:s0      1028 ?        00:00:00 kworker/R-xfs-inodegc/vda2
system_u:system_r:kernel_t:s0      1029 ?        00:00:00 kworker/R-xfs-log/vda2
system_u:system_r:kernel_t:s0      1030 ?        00:00:00 kworker/R-xfs-cil/vda2
system_u:system_r:kernel_t:s0      1031 ?        00:00:00 xfsaild/vda2
system_u:system_r:auditd_t:s0      1056 ?        00:00:00 auditd
system_u:system_r:auditd_t:s0      1058 ?        00:00:00 sedispatch
system_u:system_r:system_dbusd_t:s0-s0:c0.c1023 1090 ? 00:00:00 dbus-broker-lau
system_u:system_r:system_dbusd_t:s0-s0:c0.c1023 1098 ? 00:00:00 dbus-broker
system_u:system_r:avahi_t:s0       1099 ?        00:00:00 avahi-daemon
system_u:system_r:chronyd_t:s0     1100 ?        00:00:00 chronyd
system_u:system_r:firewalld_t:s0   1102 ?        00:00:00 firewalld
system_u:system_r:NetworkManager_t:s0 1103 ?     00:00:00 NetworkManager
system_u:system_r:irqbalance_t:s0  1105 ?        00:00:00 irqbalance
system_u:system_r:lsmd_t:s0        1106 ?        00:00:00 lsmd
system_u:system_r:mcelog_t:s0      1107 ?        00:00:00 mcelog
system_u:system_r:policykit_t:s0   1108 ?        00:00:00 polkitd
system_u:system_r:virt_qemu_ga_t:s0 1109 ?       00:00:00 qemu-ga
system_u:system_r:rtkit_daemon_t:s0 1110 ?       00:00:00 rtkit-daemon
system_u:system_r:accountsd_t:s0   1112 ?        00:00:00 accounts-daemon
system_u:system_r:switcheroo_control_t:s0 1113 ? 00:00:00 switcheroo-cont
system_u:system_r:systemd_logind_t:s0 1116 ?     00:00:00 systemd-logind
system_u:system_r:devicekit_disk_t:s0 1117 ?     00:00:00 udisksd
system_u:system_r:devicekit_power_t:s0 1119 ?    00:00:00 upowerd
system_u:system_r:systemd_userdbd_t:s0 1126 ?    00:00:00 systemd-userdbd
system_u:system_r:alsa_t:s0        1142 ?        00:00:00 alsactl
system_u:system_r:avahi_t:s0       1162 ?        00:00:00 avahi-daemon
system_u:system_r:cupsd_t:s0-s0:c0.c1023 1186 ?  00:00:00 cupsd
system_u:system_r:sshd_t:s0-s0:c0.c1023 1188 ?   00:00:00 sshd
system_u:system_r:modemmanager_t:s0 1191 ?       00:00:00 ModemManager
system_u:system_r:tuned_t:s0       1192 ?        00:00:00 tuned
system_u:system_r:crond_t:s0-s0:c0.c1023 1204 ?  00:00:00 atd
system_u:system_r:crond_t:s0-s0:c0.c1023 1205 ?  00:00:00 crond
system_u:system_r:xdm_t:s0-s0:c0.c1023 1206 ?    00:00:00 gdm
system_u:system_r:syslogd_t:s0     1240 ?        00:00:00 rsyslogd
system_u:system_r:tuned_ppd_t:s0   1398 ?        00:00:00 tuned-ppd
system_u:system_r:colord_t:s0      2107 ?        00:00:00 colord
system_u:system_r:NetworkManager_t:s0 2578 ?     00:00:00 wpa_supplicant
system_u:system_r:vdagent_t:s0     2729 ?        00:00:01 spice-vdagentd
system_u:system_r:xdm_t:s0-s0:c0.c1023 2810 ?    00:00:00 gdm-session-wor
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2833 ? 00:00:00 systemd
system_u:system_r:init_t:s0        2835 ?        00:00:00 (sd-pam)
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2852 ? 00:00:00 gnome-keyring-d
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2862 tty2 00:00:00 gdm-wayland-ses
unconfined_u:unconfined_r:unconfined_dbusd_t:s0-s0:c0.c1023 2870 ? 00:00:00 dbus-broker-lau
unconfined_u:unconfined_r:unconfined_dbusd_t:s0-s0:c0.c1023 2875 ? 00:00:00 dbus-broker
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2879 tty2 00:00:00 gnome-session-b
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2933 ? 00:00:00 gnome-session-c
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2937 ? 00:00:00 gnome-session-b
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2962 ? 00:04:04 gnome-shell
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2971 ? 00:00:00 gvfsd
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 2977 ? 00:00:00 gvfsd-fuse
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3000 ? 00:00:00 at-spi-bus-laun
unconfined_u:unconfined_r:unconfined_dbusd_t:s0-s0:c0.c1023 3006 ? 00:00:00 dbus-broker-lau
unconfined_u:unconfined_r:unconfined_dbusd_t:s0-s0:c0.c1023 3007 ? 00:00:00 dbus-broker
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3008 ? 00:00:00 at-spi2-registr
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3023 ? 00:00:00 gnome-shell-cal
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3024 ? 00:00:00 xdg-permission-
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3042 ? 00:00:00 evolution-sourc
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3050 ? 00:00:00 gjs
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3059 ? 00:00:01 ibus-daemon
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3060 ? 00:00:00 gsd-a11y-settin
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3063 ? 00:00:00 gsd-color
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3065 ? 00:00:00 gsd-datetime
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3066 ? 00:00:00 gsd-housekeepin
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3067 ? 00:00:00 gsd-keyboard
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3068 ? 00:00:00 gsd-media-keys
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3069 ? 00:00:00 gsd-power
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3070 ? 00:00:00 gsd-print-notif
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3071 ? 00:00:00 gsd-rfkill
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3074 ? 00:00:00 gsd-screensaver
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3076 ? 00:00:00 gsd-sharing
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3077 ? 00:00:00 gsd-smartcard
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3079 ? 00:00:00 gsd-sound
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3080 ? 00:00:00 gsd-usb-protect
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3081 ? 00:00:00 gsd-wacom
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3096 ? 00:00:00 gvfs-udisks2-vo
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3160 ? 00:00:00 gjs
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3195 ? 00:00:00 ibus-dconf
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3197 ? 00:00:02 ibus-extension-
system_u:system_r:system_cronjob_t:s0-s0:c0.c1023 3205 ? 00:00:00 anacron
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3234 ? 00:00:00 ibus-portal
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3249 ? 00:00:00 spice-vdagent
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3279 ? 00:00:00 goa-daemon
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3280 ? 00:00:00 gvfs-mtp-volume
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3286 ? 00:00:00 gvfs-gphoto2-vo
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3289 ? 00:00:00 evolution-calen
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3294 ? 00:00:00 gvfs-goa-volume
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3304 ? 00:00:00 goa-identity-se
unconfined_u:unconfined_r:xserver_t:s0-s0:c0.c1023 3312 ? 00:00:00 Xwayland
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3349 ? 00:00:00 evolution-addre
system_u:system_r:sssd_t:s0        3361 ?        00:00:00 sssd_kcm
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3378 ? 00:00:00 ibus-engine-sim
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3396 ? 00:00:00 pipewire
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3398 ? 00:00:00 wireplumber
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3400 ? 00:00:00 pipewire-pulse
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3481 ? 00:00:00 gsd-printer
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3522 ? 00:00:00 gsd-xsettings
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3560 ? 00:00:00 ibus-x11
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3588 ? 00:00:00 mutter-x11-fram
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3599 ? 00:00:00 evolution-alarm
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3604 ? 00:00:00 gsd-disk-utilit
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3616 ? 00:00:01 gnome-software
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3642 ? 00:00:00 xdg-desktop-por
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3647 ? 00:00:00 xdg-document-po
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3653 ? 00:00:00 fusermount3
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3656 ? 00:00:00 xdg-desktop-por
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3681 ? 00:00:00 xdg-desktop-por
system_u:system_r:fwupd_t:s0       3712 ?        00:00:00 fwupd
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3839 ? 00:00:00 dconf-service
system_u:system_r:boltd_t:s0       3909 ?        00:00:00 boltd
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 3918 ? 00:00:00 gvfsd-metadata
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4022 ? 00:00:37 ptyxis
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4030 ? 00:00:00 ptyxis-agent
unconfined_u:unconfined_r:container_runtime_t:s0-s0:c0.c1023 4046 ? 00:00:00 catatonit
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4083 pts/0 00:00:00 bash
system_u:system_r:gnome_remote_desktop_t:s0 4290 ? 00:00:00 gnome-remote-de
system_u:system_r:kernel_t:s0      4545 ?        00:00:00 kworker/u9:1-flush-253:0
system_u:system_r:kernel_t:s0      4681 ?        00:00:00 kworker/u9:2-kvfree_rcu_reclaim
system_u:system_r:kernel_t:s0      4683 ?        00:00:00 kworker/1:3-events
system_u:system_r:kernel_t:s0      4685 ?        00:00:00 kworker/1:5-cgroup_free
system_u:system_r:kernel_t:s0      4686 ?        00:00:00 kworker/1:6-cgroup_free
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4787 ? 00:00:53 firefox
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4860 ? 00:00:00 Socket Process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4893 ? 00:00:00 WebExtensions
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4898 ? 00:00:00 RDD Process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4927 ? 00:00:00 Isolated Web Co
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4956 ? 00:00:00 Isolated Web Co
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 4974 ? 00:00:01 Privileged Cont
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5035 ? 00:00:00 Utility Process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5075 ? 00:00:10 Isolated Web Co
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5132 ? 00:00:00 Isolated Web Co
system_u:system_r:flatpak_helper_t:s0 5228 ?     00:00:00 flatpak-system-
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5554 ? 00:00:00 Web Content
system_u:system_r:kernel_t:s0      5608 ?        00:00:00 kworker/0:1-events
system_u:system_r:kernel_t:s0      5644 ?        00:00:00 kworker/0:3
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5711 ? 00:00:00 Web Content
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5713 ? 00:00:00 Web Content
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5719 ? 00:00:00 Web Content
system_u:system_r:systemd_userdbd_t:s0 5777 ?    00:00:00 systemd-userwor
system_u:system_r:systemd_userdbd_t:s0 5778 ?    00:00:00 systemd-userwor
system_u:system_r:systemd_userdbd_t:s0 5779 ?    00:00:00 systemd-userwor
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5781 pts/0 00:00:00 ps
sergey@centos10:~$ ps -eZ | grep nginx
sergey@centos10:~$ sudo semanage port -l | grep nginx
[sudo] пароль для sergey: 
sergey@centos10:~$ whereis nginx
nginx: /usr/sbin/nginx /usr/lib64/nginx /etc/nginx /usr/share/nginx /usr/share/man/man3/nginx.3pm.gz /usr/share/man/man8/nginx.8.gz
sergey@centos10:~$ nginx -t
nginx: [alert] could not open error log file: open() "/var/log/nginx/error.log" failed (13: Permission denied)
2026/08/21 21:29:52 [warn] 5909#5909: the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:5
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
2026/08/21 21:29:52 [emerg] 5909#5909: open() "/run/nginx.pid" failed (13: Permission denied)
nginx: configuration file /etc/nginx/nginx.conf test failed
sergey@centos10:~$ sudo nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ ps axZ | grep nginx
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 5986 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ sudo nano /etc/nginx/nginx.conf
[sudo] пароль для sergey: 
Попробуйте ещё раз.
[sudo] пароль для sergey: 
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ ps axZ | grep nginx
system_u:system_r:httpd_t:s0       6115 ?        Ss     0:00 nginx: master process /usr/sbin/nginx
system_u:system_r:httpd_t:s0       6116 ?        S      0:00 nginx: worker process
system_u:system_r:httpd_t:s0       6117 ?        S      0:00 nginx: worker process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 6125 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ sudo nano /etc/nginx/nginx.conf
sergey@centos10:~$ sudo semanage port -l | grep nginx
sergey@centos10:~$ id -Z | grep "nginx"
sergey@centos10:~$ sudo semanage port -l | grep http
http_cache_port_t              tcp      8080, 8118, 8123, 10001-10010
http_cache_port_t              udp      3130
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
pegasus_https_port_t           tcp      5989
sergey@centos10:~$ id -Z | grep http
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ ps axZ | grep nginx
system_u:system_r:httpd_t:s0       6115 ?        Ss     0:00 nginx: master process /usr/sbin/nginx
system_u:system_r:httpd_t:s0       6116 ?        S      0:00 nginx: worker process
system_u:system_r:httpd_t:s0       6117 ?        S      0:00 nginx: worker process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 6348 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ sudo sesearch -A -s httpd_t | grep 'allow httpd_t'
[sudo] пароль для sergey: 
allow httpd_t abrt_etc_t:file { getattr ioctl lock open read };
allow httpd_t abrt_retrace_spool_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t abrt_retrace_spool_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t abrt_retrace_spool_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t abrt_retrace_spool_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t abrt_retrace_worker_t:process transition;
allow httpd_t application_exec_type:file { execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t autofs_t:dir { ioctl lock read }; [ httpd_use_nfs ]:True
allow httpd_t autofs_t:dir { ioctl lock read }; [ use_nfs_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t avahi_t:dbus send_msg; [ httpd_dbus_avahi ]:True
allow httpd_t base_ro_file_type:file { execute execute_no_trans map };
allow httpd_t bugzilla_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t bugzilla_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t bugzilla_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t bugzilla_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t calamaris_www_t:dir { ioctl lock read };
allow httpd_t calamaris_www_t:file { getattr ioctl lock open read };
allow httpd_t calamaris_www_t:lnk_file { getattr read };
allow httpd_t certwatch_t:fd use;
allow httpd_t certwatch_t:fifo_file { append getattr ioctl lock read write };
allow httpd_t certwatch_t:process sigchld;
allow httpd_t cgroup_t:dir { ioctl lock read };
allow httpd_t chkpwd_t:process transition; [ httpd_mod_auth_pam ]:True
allow httpd_t cifs_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_use_cifs ]:True
allow httpd_t cifs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_cifs ]:True
allow httpd_t cifs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_cifs ]:True
allow httpd_t cifs_t:dir { ioctl lock read }; [ git_system_use_cifs ]:True
allow httpd_t cifs_t:dir { ioctl lock read }; [ git_system_use_cifs ]:True
allow httpd_t cifs_t:dir { ioctl lock read }; [ use_samba_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t cifs_t:dir { ioctl lock read }; [ use_samba_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t cifs_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_use_cifs ]:True
allow httpd_t cifs_t:file { execute getattr ioctl map open read }; [ httpd_use_cifs && httpd_enable_cgi ]:True
allow httpd_t cifs_t:file { getattr ioctl lock open read }; [ git_system_use_cifs ]:True
allow httpd_t cifs_t:file { getattr ioctl lock open read }; [ use_samba_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t cifs_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_use_cifs ]:True
allow httpd_t cifs_t:lnk_file { getattr read }; [ use_samba_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t cluster_conf_t:file { getattr ioctl lock open read };
allow httpd_t commplex_main_port_t:tcp_socket name_bind; [ httpd_use_openstack ]:True
allow httpd_t crond_t:fifo_file open;
allow httpd_t crond_t:process sigchld;
allow httpd_t dirsrv_config_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t dirsrv_config_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t dirsrv_share_t:dir { ioctl lock read };
allow httpd_t dirsrv_share_t:file { getattr ioctl lock map open read };
allow httpd_t dirsrv_share_t:lnk_file read;
allow httpd_t dirsrv_t:process { signal signull };
allow httpd_t dirsrv_t:unix_stream_socket connectto;
allow httpd_t dirsrv_unit_file_t:file getattr;
allow httpd_t dirsrv_var_log_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t dirsrv_var_log_t:fifo_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t dirsrv_var_log_t:file { create link open read rename setattr unlink watch watch_reads write };
allow httpd_t dirsrv_var_run_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t dirsrv_var_run_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t dirsrv_var_run_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t domain:process getpgid; [ httpd_run_stickshift ]:True
allow httpd_t dspam_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t dspam_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t dspam_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t dspam_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t efivarfs_t:file { getattr ioctl lock open read };
allow httpd_t ephemeral_port_type:tcp_socket name_bind; [ httpd_enable_ftp_server ]:True
allow httpd_t ephemeral_port_type:tcp_socket name_connect; [ httpd_can_connect_ftp ]:True
allow httpd_t ephemeral_port_type:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t ephemeral_port_type:tcp_socket name_connect; [ httpd_use_openstack ]:True
allow httpd_t ephemeral_port_type:udp_socket name_bind; [ httpd_verify_dns ]:True
allow httpd_t file_type:dir { getattr open search };
allow httpd_t file_type:filesystem getattr;
allow httpd_t filesystem_type:filesystem getattr;
allow httpd_t ftp_client_packet_t:packet recv; [ httpd_can_network_relay ]:True
allow httpd_t ftp_client_packet_t:packet send; [ httpd_can_network_relay ]:True
allow httpd_t ftp_port_t:tcp_socket name_bind; [ httpd_enable_ftp_server ]:True
allow httpd_t ftp_port_t:tcp_socket name_connect; [ httpd_can_connect_ftp ]:True
allow httpd_t ftp_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t fusefs_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_use_fusefs ]:True
allow httpd_t fusefs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_fusefs ]:True
allow httpd_t fusefs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_fusefs ]:True
allow httpd_t fusefs_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_use_fusefs ]:True
allow httpd_t fusefs_t:file { execute getattr ioctl map open read }; [ httpd_use_fusefs && httpd_enable_cgi ]:True
allow httpd_t fusefs_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_use_fusefs ]:True
allow httpd_t gds_db_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t git_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t git_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t git_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t git_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t git_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t git_sys_content_t:dir { ioctl lock read };
allow httpd_t git_sys_content_t:file { getattr ioctl lock map open read };
allow httpd_t git_sys_content_t:lnk_file { getattr read };
allow httpd_t gitosis_var_lib_t:dir { ioctl lock read };
allow httpd_t gitosis_var_lib_t:file { getattr ioctl lock open read };
allow httpd_t gitosis_var_lib_t:lnk_file { getattr read };
allow httpd_t gopher_client_packet_t:packet recv; [ httpd_can_network_relay ]:True
allow httpd_t gopher_client_packet_t:packet send; [ httpd_can_network_relay ]:True
allow httpd_t gopher_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t gpg_web_t:process transition; [ httpd_use_gpg && httpd_enable_cgi ]:True
allow httpd_t gssproxy_t:fd use;
allow httpd_t gssproxy_t:fifo_file { append getattr ioctl lock read write };
allow httpd_t gssproxy_t:process sigchld;
allow httpd_t gssproxy_t:unix_stream_socket connectto;
allow httpd_t gssproxy_var_lib_t:sock_file { append getattr open write };
allow httpd_t gssproxy_var_run_t:sock_file { append getattr open write };
allow httpd_t home_root_t:dir { ioctl lock read }; [ httpd_enable_homedirs ]:True
allow httpd_t http_cache_client_packet_t:packet recv; [ httpd_can_network_relay ]:True
allow httpd_t http_cache_client_packet_t:packet send; [ httpd_can_network_relay ]:True
allow httpd_t http_cache_port_t:tcp_socket name_bind;
allow httpd_t http_cache_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t http_client_packet_t:packet recv; [ httpd_can_network_relay ]:True
allow httpd_t http_client_packet_t:packet send; [ httpd_can_network_relay ]:True
allow httpd_t http_port_t:tcp_socket name_bind;
allow httpd_t http_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t http_port_t:tcp_socket name_connect; [ httpd_graceful_shutdown ]:True
allow httpd_t http_port_t:udp_socket name_bind;
allow httpd_t http_server_packet_t:packet { recv send };
allow httpd_t httpd_cache_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_cache_t:file { append create getattr ioctl link lock map open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_cache_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_config_t:dir { ioctl lock read };
allow httpd_t httpd_config_t:file { getattr ioctl lock map open read };
allow httpd_t httpd_config_t:lnk_file { getattr read };
allow httpd_t httpd_content_type:dir { ioctl lock read }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_content_type:file { getattr ioctl lock map open read };
allow httpd_t httpd_content_type:lnk_file { getattr read }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_exec_t:file { entrypoint execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t httpd_helper_exec_t:file { execute getattr ioctl map open read };
allow httpd_t httpd_helper_t:process transition;
allow httpd_t httpd_keytab_t:file { getattr ioctl lock open read };
allow httpd_t httpd_lock_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_log_t:dir { add_name create ioctl lock read setattr write };
allow httpd_t httpd_log_t:file { create open read setattr };
allow httpd_t httpd_log_t:lnk_file { getattr read };
allow httpd_t httpd_modules_t:dir { ioctl lock read };
allow httpd_t httpd_modules_t:file { execute getattr ioctl lock map open read };
allow httpd_t httpd_modules_t:lnk_file { getattr read };
allow httpd_t httpd_passwd_t:process transition;
allow httpd_t httpd_php_exec_t:file { execute getattr ioctl map open read };
allow httpd_t httpd_php_t:process transition;
allow httpd_t httpd_rotatelogs_exec_t:file { execute getattr ioctl map open read };
allow httpd_t httpd_rotatelogs_t:process { sigchld sigkill signal signull sigstop transition };
allow httpd_t httpd_script_exec_type:dir { ioctl lock read };
allow httpd_t httpd_script_exec_type:file { getattr ioctl lock open read };
allow httpd_t httpd_script_exec_type:lnk_file { getattr read };
allow httpd_t httpd_script_type:process { sigkill signal signull sigstop };
allow httpd_t httpd_script_type:unix_stream_socket connectto;
allow httpd_t httpd_squirrelmail_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_squirrelmail_t:file { append create getattr ioctl link lock map open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_squirrelmail_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_suexec_exec_t:file { execute getattr ioctl map open read };
allow httpd_t httpd_suexec_t:file { getattr ioctl lock open read };
allow httpd_t httpd_suexec_t:process { signal signull transition };
allow httpd_t httpd_sys_content_t:dir { ioctl lock read };
allow httpd_t httpd_sys_content_t:lnk_file { getattr read };
allow httpd_t httpd_sys_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_sys_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t httpd_sys_script_t:process transition; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpd_sys_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t httpd_sys_script_t:process transition; [ httpd_ssi_exec ]:True
allow httpd_t httpd_sys_script_t:process transition; [ httpd_use_cifs && httpd_enable_cgi ]:True
allow httpd_t httpd_sys_script_t:process transition; [ httpd_use_fusefs && httpd_enable_cgi ]:True
allow httpd_t httpd_sys_script_t:process transition; [ httpd_use_nfs && httpd_enable_cgi ]:True
allow httpd_t httpd_sys_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t httpd_t:association sendto;
allow httpd_t httpd_t:capability audit_write; [ httpd_mod_auth_pam ]:True
allow httpd_t httpd_t:capability fowner; [ httpd_use_opencryptoki ]:True
allow httpd_t httpd_t:capability sys_resource; [ corecmd_bin_sys_resource ]:True
allow httpd_t httpd_t:capability sys_resource; [ httpd_setrlimit ]:True
allow httpd_t httpd_t:capability sys_resource; [ httpd_setrlimit ]:True
allow httpd_t httpd_t:capability { chown dac_override dac_read_search kill net_bind_service setgid setuid sys_chroot sys_nice sys_tty_config };
allow httpd_t httpd_t:capability { fowner fsetid sys_resource }; [ httpd_run_stickshift ]:True
allow httpd_t httpd_t:capability { fsetid ipc_owner }; [ httpd_use_opencryptoki ]:True
allow httpd_t httpd_t:dbus send_msg;
allow httpd_t httpd_t:dir { getattr ioctl lock open read search watch };
allow httpd_t httpd_t:fd use;
allow httpd_t httpd_t:fifo_file { append getattr ioctl lock open read write };
allow httpd_t httpd_t:fifo_file { create link rename setattr unlink }; [ fips_mode ]:True
allow httpd_t httpd_t:file { append getattr ioctl lock open read write };
allow httpd_t httpd_t:key { create read setattr view write };
allow httpd_t httpd_t:lnk_file { getattr ioctl lock read };
allow httpd_t httpd_t:msg { receive send };
allow httpd_t httpd_t:msgq { associate create destroy enqueue getattr read setattr unix_read unix_write write };
allow httpd_t httpd_t:netlink_audit_socket { append bind connect create getattr getopt ioctl lock nlmsg_read nlmsg_relay nlmsg_tty_audit read setattr setopt shutdown write }; [ httpd_mod_auth_pam ]:True
allow httpd_t httpd_t:netlink_route_socket { append bind connect create getattr getopt ioctl lock nlmsg_read read setattr setopt shutdown write };
allow httpd_t httpd_t:peer recv;
allow httpd_t httpd_t:process setexec; [ httpd_run_stickshift ]:True
allow httpd_t httpd_t:process setfscreate; [ kerberos_enabled ]:True
allow httpd_t httpd_t:process setrlimit; [ httpd_setrlimit ]:True
allow httpd_t httpd_t:process setrlimit; [ httpd_setrlimit ]:True
allow httpd_t httpd_t:process { dyntransition fork getattr getcap getpgid getrlimit getsched getsession noatsecure rlimitinh setcap setkeycreate setpgid setsched setsockcreate share sigchld siginh sigkill signal signull sigstop transition };
allow httpd_t httpd_t:process { execmem execstack }; [ httpd_execmem ]:True
allow httpd_t httpd_t:sem { associate create destroy getattr read setattr unix_read unix_write write };
allow httpd_t httpd_t:shm { associate create destroy getattr lock read setattr unix_read unix_write write };
allow httpd_t httpd_t:sock_file { getattr open read };
allow httpd_t httpd_t:tcp_socket { accept append bind connect create getattr getopt ioctl listen lock read setattr setopt shutdown write };
allow httpd_t httpd_t:udp_socket { append bind connect create getattr getopt ioctl lock read setattr setopt shutdown write };
allow httpd_t httpd_t:unix_dgram_socket { append bind connect create getattr getopt ioctl lock read sendto setattr setopt shutdown write };
allow httpd_t httpd_t:unix_stream_socket { accept append bind connect connectto create getattr getopt ioctl listen lock read setattr setopt shutdown write };
allow httpd_t httpd_tmp_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_tmp_t:file { create link map open rename setattr unlink watch watch_reads write };
allow httpd_t httpd_tmp_t:file { execute execute_no_trans }; [ httpd_builtin_scripting && httpd_tmp_exec ]:True
allow httpd_t httpd_tmp_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_tmp_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t httpd_tmpfs_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_tmpfs_t:fifo_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t httpd_tmpfs_t:file { append create getattr ioctl link lock map open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_tmpfs_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_tmpfs_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t httpd_unconfined_script_exec_t:file { execute getattr ioctl map open read };
allow httpd_t httpd_unconfined_script_t:process { sigchld sigkill signal signull sigstop transition };
allow httpd_t httpd_user_content_type:dir { ioctl lock read }; [ httpd_enable_homedirs ]:True
allow httpd_t httpd_user_content_type:file map; [ httpd_enable_homedirs ]:True
allow httpd_t httpd_user_content_type:file { getattr ioctl lock open read }; [ httpd_enable_homedirs ]:True
allow httpd_t httpd_user_content_type:lnk_file { getattr read }; [ httpd_enable_homedirs ]:True
allow httpd_t httpd_user_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:dir { add_name ioctl lock read remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:dir { add_name ioctl lock read remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:dir { add_name ioctl lock read remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t httpd_user_script_exec_t:file { execute map }; [ httpd_enable_cgi ]:True
allow httpd_t httpd_user_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t httpd_user_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t httpd_var_lib_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_var_lib_t:file { append create getattr ioctl link lock map open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_var_lib_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_var_run_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t httpd_var_run_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t httpd_var_run_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t httpdcontent:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:dir { add_name ioctl lock read remove_name write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:file { execute getattr ioctl map open read }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t httpdcontent:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ ( httpd_builtin_scripting && httpd_unified && httpd_enable_cgi ) ]:True
allow httpd_t hugetlbfs_t:dir { ioctl lock read };
allow httpd_t hugetlbfs_t:file { append execute execute_no_trans getattr ioctl lock map open read write };
allow httpd_t ica_tmpfs_t:file { append ioctl lock map read write };
allow httpd_t ifconfig_t:fd use;
allow httpd_t ifconfig_t:fifo_file { append getattr ioctl lock read write };
allow httpd_t ifconfig_t:process sigchld;
allow httpd_t init_t:dir { getattr open search };
allow httpd_t init_t:file { getattr ioctl lock open read };
allow httpd_t init_t:lnk_file { getattr read };
allow httpd_t init_t:unix_stream_socket sendto;
allow httpd_t init_var_run_t:dir { ioctl lock read };
allow httpd_t iso9660_t:dir { ioctl lock read };
allow httpd_t iso9660_t:file { getattr ioctl lock open read };
allow httpd_t iso9660_t:lnk_file { getattr read };
allow httpd_t jboss_management_port_t:tcp_socket name_bind;
allow httpd_t jboss_messaging_port_t:tcp_socket name_bind;
allow httpd_t jetty_cache_t:dir { add_name create ioctl link lock read relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_cache_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_cache_t:file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_cache_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_cache_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_log_t:dir { add_name create ioctl link lock read relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_log_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_log_t:file { create link open read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_log_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_log_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_t:dir { getattr ioctl lock open read search };
allow httpd_t jetty_t:file { getattr ioctl lock open read };
allow httpd_t jetty_t:lnk_file { getattr read };
allow httpd_t jetty_t:process ptrace; [ deny_ptrace ]:False
allow httpd_t jetty_t:process { getattr sigchld sigkill signal signull sigstop };
allow httpd_t jetty_tmp_t:dir { add_name create ioctl link lock read relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_tmp_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_tmp_t:file { create link open relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_tmp_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_tmp_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_unit_file_t:dir { add_name create link relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_unit_file_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_unit_file_t:file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_unit_file_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_unit_file_t:service { disable enable reload start status stop };
allow httpd_t jetty_unit_file_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_var_lib_t:dir { add_name create ioctl link lock read relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_var_lib_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_var_lib_t:file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_var_lib_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_var_lib_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_var_run_t:dir { add_name create ioctl link lock read relabelfrom relabelto remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t jetty_var_run_t:fifo_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t jetty_var_run_t:file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_var_run_t:lnk_file { append create getattr ioctl link lock read relabelfrom relabelto rename setattr unlink watch watch_reads write };
allow httpd_t jetty_var_run_t:sock_file { append create getattr ioctl link lock open read relabelfrom relabelto rename setattr unlink write };
allow httpd_t keystone_cgi_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t keystone_cgi_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t keystone_cgi_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t keystone_cgi_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t keystone_log_t:file { open read }; [ httpd_use_openstack ]:True
allow httpd_t krb5_keytab_t:dir { ioctl lock read };
allow httpd_t krb5_keytab_t:file { getattr ioctl lock open read };
allow httpd_t krb5kdc_conf_t:file { getattr ioctl lock open read };
allow httpd_t ldap_port_t:tcp_socket name_connect; [ httpd_can_connect_ldap ]:True
allow httpd_t logrotate_t:process sigchld;
allow httpd_t mediawiki_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t mediawiki_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t mediawiki_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t mediawiki_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t mediawiki_tmp_t:dir { ioctl lock remove_name write };
allow httpd_t mediawiki_tmp_t:file { open unlink };
allow httpd_t mediawiki_tmp_t:lnk_file { getattr read };
allow httpd_t memcache_port_t:tcp_socket name_connect; [ httpd_can_network_memcache ]:True
allow httpd_t memcache_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t memcached_t:unix_stream_socket connectto;
allow httpd_t memcached_var_run_t:dir { add_name ioctl lock read remove_name write }; [ httpd_manage_ipa ]:True
allow httpd_t memcached_var_run_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_manage_ipa ]:True
allow httpd_t memcached_var_run_t:sock_file { append getattr open write };
allow httpd_t mnt_t:dir { ioctl lock read };
allow httpd_t mojomojo_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t mojomojo_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t mojomojo_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t mojomojo_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t mongod_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t mssql_client_packet_t:packet recv; [ httpd_can_network_connect_db ]:True
allow httpd_t mssql_client_packet_t:packet send; [ httpd_can_network_connect_db ]:True
allow httpd_t mssql_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t mta_exec_type:lnk_file { getattr read }; [ httpd_can_sendmail ]:True
allow httpd_t mysqld_client_packet_t:packet recv; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_client_packet_t:packet send; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_db_t:sock_file { append getattr open read write };
allow httpd_t mysqld_etc_t:dir { ioctl lock read };
allow httpd_t mysqld_etc_t:file { getattr ioctl lock open read };
allow httpd_t mysqld_etc_t:lnk_file { getattr read };
allow httpd_t mysqld_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_t:association recvfrom; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_t:peer recv; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_t:tcp_socket recvfrom; [ httpd_can_network_connect_db ]:True
allow httpd_t mysqld_t:unix_stream_socket connectto;
allow httpd_t mysqld_var_run_t:sock_file { append getattr open write };
allow httpd_t mythtv_port_t:tcp_socket name_connect; [ httpd_can_connect_mythtv ]:True
allow httpd_t mythtv_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t mythtv_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t mythtv_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t mythtv_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t named_cache_t:dir { ioctl lock read };
allow httpd_t named_cache_t:file { append getattr ioctl lock open read write };
allow httpd_t newrole_t:process sigchld;
allow httpd_t nfs_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_use_nfs ]:True
allow httpd_t nfs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_nfs ]:True
allow httpd_t nfs_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_nfs ]:True
allow httpd_t nfs_t:dir { ioctl lock read }; [ git_system_use_nfs ]:True
allow httpd_t nfs_t:dir { ioctl lock read }; [ git_system_use_nfs ]:True
allow httpd_t nfs_t:dir { ioctl lock read }; [ use_nfs_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t nfs_t:dir { ioctl lock read }; [ use_nfs_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t nfs_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_use_nfs ]:True
allow httpd_t nfs_t:file { execute getattr ioctl map open read }; [ httpd_use_nfs && httpd_enable_cgi ]:True
allow httpd_t nfs_t:file { getattr ioctl lock open read }; [ git_system_use_nfs ]:True
allow httpd_t nfs_t:file { getattr ioctl lock open read }; [ use_nfs_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t nfs_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_use_nfs ]:True
allow httpd_t nfs_t:lnk_file { getattr read }; [ use_nfs_home_dirs && httpd_enable_homedirs ]:True
allow httpd_t node_t:tcp_socket node_bind;
allow httpd_t node_t:udp_socket node_bind;
allow httpd_t ntop_port_t:tcp_socket name_bind;
allow httpd_t oddjob_t:dbus send_msg;
allow httpd_t oddjob_t:dir { getattr ioctl lock open read search };
allow httpd_t oddjob_t:file { getattr ioctl lock open read };
allow httpd_t oddjob_t:lnk_file { getattr read };
allow httpd_t oddjob_t:process getattr;
allow httpd_t openshift_initrc_t:process { signal signull };
allow httpd_t openshift_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t openshift_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t openshift_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t openshift_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t openshift_var_lib_t:file getattr;
allow httpd_t oracle_client_packet_t:packet recv; [ httpd_can_network_connect_db ]:True
allow httpd_t oracle_client_packet_t:packet send; [ httpd_can_network_connect_db ]:True
allow httpd_t oracle_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t osapi_compute_port_t:tcp_socket name_connect; [ httpd_use_openstack ]:True
allow httpd_t passenger_exec_t:file { execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t passenger_t:process sigkill;
allow httpd_t passenger_t:process transition; [ httpd_run_stickshift ]:False
allow httpd_t passenger_t:unix_stream_socket connectto; [ httpd_run_stickshift ]:False
allow httpd_t passenger_t:unix_stream_socket connectto; [ httpd_run_stickshift ]:False
allow httpd_t passenger_tmp_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_tmp_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_tmp_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_tmp_t:file { create link open rename setattr unlink watch watch_reads write }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_tmp_t:sock_file { append getattr open write }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_var_lib_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:file { getattr ioctl lock open read }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_var_lib_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_run_stickshift ]:True
allow httpd_t passenger_var_lib_t:lnk_file { getattr read }; [ httpd_run_stickshift ]:False
allow httpd_t passenger_var_run_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t passenger_var_run_t:fifo_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t passenger_var_run_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t passenger_var_run_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t pcscd_var_run_t:file { getattr ioctl lock open read };
allow httpd_t pkcs_slotd_exec_t:file getattr; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_lock_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_lock_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_lock_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_lock_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_t:shm { associate getattr lock read unix_read unix_write write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_t:unix_stream_socket connectto; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_tmpfs_t:file { append create getattr ioctl lock map open read write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_var_lib_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_var_lib_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_var_lib_t:dir { add_name ioctl lock read remove_name write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_var_lib_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pkcs_slotd_var_run_t:sock_file { append getattr open write }; [ httpd_use_opencryptoki ]:True
allow httpd_t pki_apache_config:dir { add_name ioctl lock read remove_name write };
allow httpd_t pki_apache_config:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t pki_apache_domain:process signal;
allow httpd_t pki_apache_var_lib:dir { add_name ioctl lock read remove_name write };
allow httpd_t pki_apache_var_lib:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t pki_apache_var_lib:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t pki_apache_var_log:dir { add_name ioctl lock read remove_name write };
allow httpd_t pki_apache_var_log:file { create link open read rename setattr unlink watch watch_reads write };
allow httpd_t pki_apache_var_run:file { getattr ioctl lock open read };
allow httpd_t pki_tomcat_cert_t:file { getattr ioctl lock open read };
allow httpd_t pki_tomcat_cert_t:lnk_file { getattr read };
allow httpd_t pop_client_packet_t:packet recv; [ httpd_can_sendmail ]:True
allow httpd_t pop_client_packet_t:packet send; [ httpd_can_sendmail ]:True
allow httpd_t pop_port_t:tcp_socket name_connect; [ httpd_can_sendmail ]:True
allow httpd_t port_type:tcp_socket name_connect; [ httpd_can_network_connect ]:True
allow httpd_t port_type:tcp_socket { recv_msg send_msg };
allow httpd_t port_type:udp_socket { recv_msg send_msg };
allow httpd_t postfix_spool_t:file { append getattr ioctl lock open read write }; [ httpd_can_sendmail ]:True
allow httpd_t postgresql_client_packet_t:packet recv; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_client_packet_t:packet send; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_port_t:tcp_socket name_connect; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_t:association recvfrom; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_t:peer recv; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_t:tcp_socket recvfrom; [ httpd_can_network_connect_db ]:True
allow httpd_t postgresql_t:unix_stream_socket connectto;
allow httpd_t postgresql_tmp_t:sock_file { append getattr open write };
allow httpd_t postgresql_var_run_t:sock_file { append getattr open write };
allow httpd_t preupgrade_data_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:dir { add_name ioctl lock read remove_name write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:file { getattr ioctl lock open read }; [ httpd_run_preupgrade ]:False
allow httpd_t preupgrade_data_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write }; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_data_t:lnk_file { getattr read }; [ httpd_run_preupgrade ]:False
allow httpd_t preupgrade_port_t:tcp_socket name_bind; [ httpd_run_preupgrade ]:True
allow httpd_t preupgrade_t:process transition; [ httpd_run_preupgrade ]:True
allow httpd_t privfd:fd use;
allow httpd_t proc_net_t:dir { getattr ioctl lock open read search };
allow httpd_t proc_net_t:file { getattr ioctl lock open read };
allow httpd_t proc_net_t:lnk_file { getattr read };
allow httpd_t public_content_rw_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:dir { add_name remove_name write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:dir { add_name remove_name write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:dir { add_name remove_name write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:dir { ioctl lock read };
allow httpd_t public_content_rw_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:file { getattr ioctl lock map open read };
allow httpd_t public_content_rw_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_anon_write ]:True
allow httpd_t public_content_rw_t:lnk_file { getattr read };
allow httpd_t public_content_t:dir { ioctl lock read };
allow httpd_t public_content_t:file { getattr ioctl lock map open read };
allow httpd_t public_content_t:lnk_file { getattr read };
allow httpd_t puppet_port_t:tcp_socket name_bind;
allow httpd_t random_device_t:chr_file { getattr ioctl lock open read };
allow httpd_t realmd_var_lib_t:dir { ioctl lock read };
allow httpd_t realmd_var_lib_t:file { getattr ioctl lock open read };
allow httpd_t redis_port_t:tcp_socket name_connect; [ httpd_can_network_redis ]:True
allow httpd_t redis_t:unix_stream_socket connectto;
allow httpd_t redis_var_run_t:sock_file { append getattr open write };
allow httpd_t saslauthd_t:unix_stream_socket connectto; [ httpd_use_sasl ]:True
allow httpd_t saslauthd_var_run_t:sock_file { append getattr open write }; [ httpd_use_sasl ]:True
allow httpd_t security_t:dir { ioctl lock read }; [ kerberos_enabled ]:True
allow httpd_t security_t:file { append getattr ioctl lock map open read write }; [ kerberos_enabled ]:True
allow httpd_t security_t:security check_context; [ kerberos_enabled ]:True
allow httpd_t slapd_cert_t:dir { ioctl lock read };
allow httpd_t slapd_cert_t:file { getattr ioctl lock open read };
allow httpd_t slapd_cert_t:lnk_file { getattr read };
allow httpd_t slapd_t:unix_stream_socket connectto;
allow httpd_t slapd_var_run_t:sock_file { append getattr open write };
allow httpd_t smtp_client_packet_t:packet recv; [ httpd_can_sendmail ]:True
allow httpd_t smtp_client_packet_t:packet send; [ httpd_can_sendmail ]:True
allow httpd_t smtp_port_t:tcp_socket name_connect; [ httpd_can_sendmail ]:True
allow httpd_t spamc_t:process transition; [ httpd_can_check_spam && httpd_can_sendmail ]:True
allow httpd_t squid_client_packet_t:packet recv; [ httpd_can_network_relay ]:True
allow httpd_t squid_client_packet_t:packet send; [ httpd_can_network_relay ]:True
allow httpd_t squid_port_t:tcp_socket name_connect; [ httpd_can_network_relay ]:True
allow httpd_t squid_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t squid_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t squid_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t squid_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t squid_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t squirrelmail_spool_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t squirrelmail_spool_t:file { create link open rename setattr unlink watch watch_reads write };
allow httpd_t squirrelmail_spool_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t sssd_t:dbus send_msg; [ httpd_dbus_sssd ]:True
allow httpd_t svc_run_t:fd use;
allow httpd_t svc_start_t:fd use;
allow httpd_t svc_start_t:fifo_file { append getattr ioctl lock open read write };
allow httpd_t svc_start_t:process sigchld;
allow httpd_t sysctl_kernel_t:dir { getattr ioctl lock open read search };
allow httpd_t sysctl_kernel_t:file { getattr ioctl lock open read };
allow httpd_t sysctl_net_t:dir { getattr ioctl lock open read search };
allow httpd_t sysctl_net_t:file { getattr ioctl lock open read };
allow httpd_t sysctl_net_t:lnk_file { getattr read };
allow httpd_t sysfs_t:dir { ioctl lock read };
allow httpd_t sysfs_t:file { getattr ioctl lock open read };
allow httpd_t sysfs_t:lnk_file { getattr read };
allow httpd_t system_cronjob_t:fifo_file open;
allow httpd_t system_cronjob_t:process sigchld;
allow httpd_t system_mail_t:process signal; [ httpd_can_sendmail ]:True
allow httpd_t system_mail_t:process transition; [ httpd_can_sendmail ]:True
allow httpd_t systemd_logind_var_run_t:dir { ioctl lock read };
allow httpd_t systemd_logind_var_run_t:file { getattr ioctl lock open read };
allow httpd_t systemd_passwd_agent_exec_t:file { execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t systemd_passwd_var_run_t:dir { add_name ioctl lock read remove_name write };
allow httpd_t systemd_passwd_var_run_t:fifo_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t systemd_passwd_var_run_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t systemd_passwd_var_run_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
allow httpd_t systemd_socket_proxyd_t:unix_stream_socket connectto;
allow httpd_t systemd_systemctl_exec_t:file { execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t systemd_unit_file_type:dir { ioctl lock read };
allow httpd_t tcs_port_t:tcp_socket name_connect; [ httpd_use_opencryptoki ]:True
allow httpd_t tetex_data_t:dir { ioctl lock read };
allow httpd_t tetex_data_t:file open;
allow httpd_t tetex_data_t:lnk_file { getattr read };
allow httpd_t thin_t:unix_stream_socket connectto;
allow httpd_t thin_var_run_t:sock_file { append getattr open write };
allow httpd_t udev_var_run_t:dir { ioctl lock read };
allow httpd_t udev_var_run_t:file { getattr ioctl lock open read };
allow httpd_t udev_var_run_t:lnk_file { getattr read };
allow httpd_t unpriv_userdomain:fd use;
allow httpd_t updpwd_exec_t:file { execute getattr ioctl map open read }; [ httpd_mod_auth_pam ]:True
allow httpd_t updpwd_t:process transition; [ httpd_mod_auth_pam ]:True
allow httpd_t user_devpts_t:chr_file { append getattr ioctl lock read write }; [ httpd_tty_comm ]:True
allow httpd_t user_home_dir_t:dir { ioctl lock read }; [ httpd_read_user_content ]:True
allow httpd_t user_home_dir_t:lnk_file { getattr read }; [ httpd_enable_homedirs ]:True
allow httpd_t user_home_dir_t:lnk_file { getattr read }; [ httpd_read_user_content ]:True
allow httpd_t user_home_t:file map; [ httpd_read_user_content ]:True
allow httpd_t user_home_type:dir { ioctl lock read }; [ httpd_read_user_content ]:True
allow httpd_t user_home_type:file { getattr ioctl lock open read }; [ httpd_read_user_content ]:True
allow httpd_t user_home_type:lnk_file { getattr read }; [ httpd_enable_homedirs ]:True
allow httpd_t user_tmp_t:dir { add_name ioctl lock read remove_name write };
allow httpd_t user_tmp_t:file { map write };
allow httpd_t user_tty_device_t:chr_file { append getattr ioctl lock read write }; [ httpd_tty_comm ]:True
allow httpd_t var_lib_t:dir { add_name remove_name write };
allow httpd_t var_lib_t:file { getattr ioctl lock open read };
allow httpd_t var_lock_t:dir { add_name ioctl lock read remove_name write };
allow httpd_t var_log_t:dir { add_name ioctl lock read remove_name write };
allow httpd_t var_run_t:dir { add_name remove_name write };
allow httpd_t var_t:dir { add_name ioctl lock read remove_name write };
allow httpd_t w3c_validator_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t w3c_validator_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t w3c_validator_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t w3c_validator_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t webalizer_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t webalizer_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t webalizer_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t webalizer_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t winbind_helper_exec_t:file { execute getattr ioctl map open read }; [ httpd_mod_auth_ntlm_winbind ]:True
allow httpd_t winbind_helper_t:process signal; [ httpd_mod_auth_ntlm_winbind ]:True
allow httpd_t winbind_helper_t:process transition; [ httpd_mod_auth_ntlm_winbind ]:True
allow httpd_t zabbix_port_t:tcp_socket name_connect; [ httpd_can_connect_zabbix ]:True
allow httpd_t zarafa_server_t:unix_stream_socket connectto;
allow httpd_t zarafa_server_var_run_t:sock_file { append getattr open write };
allow httpd_t zarafa_var_lib_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t zarafa_var_lib_t:file { create link open rename setattr unlink watch watch_reads write };
allow httpd_t zarafa_var_lib_t:lnk_file { append create getattr ioctl link lock read rename setattr unlink watch watch_reads write };
allow httpd_t zoneminder_exec_t:file { execute execute_no_trans getattr ioctl lock map open read };
allow httpd_t zoneminder_log_t:file open;
allow httpd_t zoneminder_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_ra_content_t:dir { add_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_ra_content_t:file append; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_ra_content_t:file create; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:dir { add_name create link remove_name rename reparent rmdir setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:dir { add_name remove_name write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:file { append create link rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:lnk_file { append create ioctl link lock rename setattr unlink watch watch_reads write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_rw_content_t:sock_file { append getattr open read write }; [ httpd_builtin_scripting ]:True
allow httpd_t zoneminder_script_exec_t:file execute; [ httpd_enable_cgi ]:True
allow httpd_t zoneminder_script_t:process transition; [ httpd_enable_cgi ]:True
allow httpd_t zoneminder_script_t:unix_dgram_socket sendto; [ httpd_enable_cgi ]:True
allow httpd_t zoneminder_t:unix_stream_socket connectto;
allow httpd_t zoneminder_var_lib_t:dir { add_name create ioctl link lock read remove_name rename reparent rmdir setattr unlink watch watch_reads write };
allow httpd_t zoneminder_var_lib_t:file { append create getattr ioctl link lock open read rename setattr unlink watch watch_reads write };
allow httpd_t zoneminder_var_lib_t:sock_file { append create getattr ioctl link lock open read rename setattr unlink write };
sergey@centos10:~$ sudo sesearch -A -s httpd_t -c tcp_socket -p name_bind
[sudo] пароль для sergey: 
allow httpd_t commplex_main_port_t:tcp_socket name_bind; [ httpd_use_openstack ]:True
allow httpd_t ephemeral_port_type:tcp_socket name_bind; [ httpd_enable_ftp_server ]:True
allow httpd_t ftp_port_t:tcp_socket name_bind; [ httpd_enable_ftp_server ]:True
allow httpd_t http_cache_port_t:tcp_socket name_bind;
allow httpd_t http_port_t:tcp_socket name_bind;
allow httpd_t jboss_management_port_t:tcp_socket name_bind;
allow httpd_t jboss_messaging_port_t:tcp_socket name_bind;
allow httpd_t ntop_port_t:tcp_socket name_bind;
allow httpd_t preupgrade_port_t:tcp_socket name_bind; [ httpd_run_preupgrade ]:True
allow httpd_t puppet_port_t:tcp_socket name_bind;
allow nsswitch_domain ephemeral_port_t:tcp_socket name_bind; [ nis_enabled ]:True
allow nsswitch_domain port_t:tcp_socket name_bind; [ nis_enabled ]:True
allow nsswitch_domain unreserved_port_t:tcp_socket name_bind; [ nis_enabled ]:True
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ sudo semanage port -l | grep http
http_cache_port_t              tcp      8080, 8118, 8123, 10001-10010
http_cache_port_t              udp      3130
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
pegasus_https_port_t           tcp      5989
sergey@centos10:~$ sudo semanage port -a -t http_port_t -p tcp
port option is needed for add
sergey@centos10:~$ sudo semanage port -a -t http_port_t -p tcp 8088
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      8088, 80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ sudo semanage port -d -t http_port_t -p tcp 8088
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ sudo grep nginx /var/log/audit/audit.log
type=ADD_GROUP msg=audit(1787336095.242:390): pid=4515 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:groupadd_t:s0-s0:c0.c1023 msg='op=add-group id=981 exe="/usr/sbin/groupadd" hostname=? addr=? terminal=? res=success'UID="root" AUID="sergey" ID="nginx"
type=GRP_MGMT msg=audit(1787336095.246:391): pid=4515 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:groupadd_t:s0-s0:c0.c1023 msg='op=add-shadow-group id=981 exe="/usr/sbin/groupadd" hostname=? addr=? terminal=? res=success'UID="root" AUID="sergey" ID="nginx"
type=ADD_USER msg=audit(1787336095.279:392): pid=4518 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:useradd_t:s0-s0:c0.c1023 msg='op=add-user acct="nginx" exe="/usr/sbin/useradd" hostname=? addr=? terminal=? res=success'UID="root" AUID="sergey"
type=SOFTWARE_UPDATE msg=audit(1787336096.217:439): pid=4498 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg='op=install sw="nginx-filesystem-2:1.26.3-12.el10.noarch" sw_type=rpm key_enforce=0 gpg_res=1 root_dir="/" comm="dnf" exe="/usr/bin/python3.12" hostname=centos10 addr=? terminal=pts/1 res=success'UID="root" AUID="sergey"
type=SOFTWARE_UPDATE msg=audit(1787336096.217:440): pid=4498 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg='op=install sw="nginx-core-2:1.26.3-12.el10.x86_64" sw_type=rpm key_enforce=0 gpg_res=1 root_dir="/" comm="dnf" exe="/usr/bin/python3.12" hostname=centos10 addr=? terminal=pts/1 res=success'UID="root" AUID="sergey"
type=SOFTWARE_UPDATE msg=audit(1787336096.217:442): pid=4498 uid=0 auid=1000 ses=3 subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 msg='op=install sw="nginx-2:1.26.3-12.el10.x86_64" sw_type=rpm key_enforce=0 gpg_res=1 root_dir="/" comm="dnf" exe="/usr/bin/python3.12" hostname=centos10 addr=? terminal=pts/1 res=success'UID="root" AUID="sergey"
type=SERVICE_START msg=audit(1787336272.054:523): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:system_r:init_t:s0 msg='unit=nginx comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'UID="root" AUID="unset"
type=SERVICE_STOP msg=audit(1787336451.534:681): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:system_r:init_t:s0 msg='unit=nginx comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'UID="root" AUID="unset"
type=AVC msg=audit(1787336451.586:682): avc:  denied  { name_bind } for  pid=5674 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0
type=SYSCALL msg=audit(1787336451.586:682): arch=c000003e syscall=49 success=no exit=-13 a0=6 a1=5641408f56f8 a2=10 a3=7ffe259dd330 items=0 ppid=1 pid=5674 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 tty=(none) ses=4294967295 comm="nginx" exe="/usr/sbin/nginx" subj=system_u:system_r:httpd_t:s0 key=(null)ARCH=x86_64 SYSCALL=bind AUID="unset" UID="root" GID="root" EUID="root" SUID="root" FSUID="root" EGID="root" SGID="root" FSGID="root"
type=SERVICE_START msg=audit(1787336451.591:683): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:system_r:init_t:s0 msg='unit=nginx comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=failed'UID="root" AUID="unset"
type=SERVICE_START msg=audit(1787337418.283:850): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=system_u:system_r:init_t:s0 msg='unit=nginx comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'UID="root" AUID="unset"
sergey@centos10:~$ sudo grep nginx /var/log/audit/audit.log | audit2allow -M mynginxport
[sudo] пароль для sergey: 
******************** ВАЖНО ***********************
Чтобы сделать этот пакет политики активным, выполните:

semodule -i mynginxport.pp

sergey@centos10:~$ ll
итого 8
-rw-r--r--. 1 sergey sergey 966 авг 21 22:05  mynginxport.pp
-rw-r--r--. 1 sergey sergey 263 авг 21 22:05  mynginxport.te
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Видео
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Документы
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Загрузки
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Изображения
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Музыка
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Общедоступные
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35 'Рабочий стол'
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Шаблоны
sergey@centos10:~$ sudo semodule -i mynginxport.pp
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 22:06:59 MSK; 9s ago
 Invocation: a4ad1b42001d45628abc1a07cb048109
    Process: 7079 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 7080 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 7083 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 7084 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.3M)
        CPU: 53ms
     CGroup: /system.slice/nginx.service
             ├─7084 "nginx: master process /usr/sbin/nginx"
             ├─7085 "nginx: worker process"
             └─7086 "nginx: worker process"

авг 21 22:06:58 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 22:06:59 centos10 nginx[7080]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 22:06:59 centos10 nginx[7080]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 22:06:59 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ ps axZ | grep nginx
system_u:system_r:httpd_t:s0       7084 ?        Ss     0:00 nginx: master process /usr/sbin/nginx
system_u:system_r:httpd_t:s0       7085 ?        S      0:00 nginx: worker process
system_u:system_r:httpd_t:s0       7086 ?        S      0:00 nginx: worker process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 7156 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ sudo semodule -l | grep mynginxport
mynginxport
sergey@centos10:~$ sudo find /var/lib/selinux/ -name "mynginxport"
/var/lib/selinux/targeted/active/modules/400/mynginxport
sergey@centos10:~$ ll
итого 8
-rw-r--r--. 1 sergey sergey 966 авг 21 22:05  mynginxport.pp
-rw-r--r--. 1 sergey sergey 263 авг 21 22:05  mynginxport.te
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Видео
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Документы
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Загрузки
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Изображения
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Музыка
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Общедоступные
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35 'Рабочий стол'
drwxr-xr-x. 2 sergey sergey   6 авг 19 23:35  Шаблоны
sergey@centos10:~$ cat mynginxport.te 

module mynginxport 1.0;

require {
	type httpd_t;
	type unreserved_port_t;
	class tcp_socket name_bind;
}

#============= httpd_t ==============

#!!!! This avc can be allowed using the boolean 'nis_enabled'
allow httpd_t unreserved_port_t:tcp_socket name_bind;
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ sudo semodule -r mynginxport.pp
libsemanage.semanage_direct_remove_key: Unable to remove module mynginxport.pp at priority 400. (No such file or directory).
semodule:  Failed!
sergey@centos10:~$ sudo semodule -r mynginxport
libsemanage.semanage_direct_remove_key: Removing last mynginxport module (no other mynginxport module exists at another priority).
sergey@centos10:~$ sudo find /var/lib/selinux/ -name "mynginxport"
sergey@centos10:~$ sudo semodule -l | grep mynginxport
sergey@centos10:~$ sudo semanage port -a -t http_port_t -p tcp 8088
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      8088, 80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 22:14:59 MSK; 9s ago
 Invocation: bcca926c3c8242a98b5db80286c2692f
    Process: 7531 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 7533 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 7535 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 7536 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.5M)
        CPU: 41ms
     CGroup: /system.slice/nginx.service
             ├─7536 "nginx: master process /usr/sbin/nginx"
             ├─7537 "nginx: worker process"
             └─7538 "nginx: worker process"

авг 21 22:14:59 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 22:14:59 centos10 nginx[7533]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 22:14:59 centos10 nginx[7533]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 22:14:59 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo semanage port -d -t http_port_t -p tcp 8088
sergey@centos10:~$ sudo semanage port -l | grep http_port_t
http_port_t                    tcp      80, 81, 443, 488, 8008, 8009, 8443, 9000
http_port_t                    udp      80, 443
pegasus_http_port_t            tcp      5988
sergey@centos10:~$ sudo systemctl restart nginx.service 
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
sergey@centos10:~$ sudo sem
semanage            semodule_expand     semodule_package    
semodule            semodule_link       semodule_unpackage  
sergey@centos10:~$ sudo semanage permissive -a httpd_t
sergey@centos10:~$ ls -Z /usr/sbin/nginx 
system_u:object_r:httpd_exec_t:s0 /usr/sbin/nginx
sergey@centos10:~$ ps axZ | grep nginx
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 7684 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ ps axZ | grep nginx
system_u:system_r:httpd_t:s0       7719 ?        Ss     0:00 nginx: master process /usr/sbin/nginx
system_u:system_r:httpd_t:s0       7720 ?        S      0:00 nginx: worker process
system_u:system_r:httpd_t:s0       7721 ?        S      0:00 nginx: worker process
unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 7740 pts/0 S+   0:00 grep --color=auto nginx
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 22:17:40 MSK; 15s ago
 Invocation: f8a985f0fcf24294a43fd345ff2d0b21
    Process: 7714 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 7716 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 7718 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 7719 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.5M)
        CPU: 40ms
     CGroup: /system.slice/nginx.service
             ├─7719 "nginx: master process /usr/sbin/nginx"
             ├─7720 "nginx: worker process"
             └─7721 "nginx: worker process"

авг 21 22:17:40 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 22:17:40 centos10 nginx[7716]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 22:17:40 centos10 nginx[7716]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 22:17:40 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo semanage permissive -d httpd_t
libsemanage.semanage_direct_remove_key: Removing last permissive_httpd_t module (no other permissive_httpd_t module exists at another priority).
sergey@centos10:~$ sudo systemctl restart nginx.service 
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
sergey@centos10:~$ sudo getsebool -a | grep httpd
httpd_anon_write --> off
httpd_builtin_scripting --> on
httpd_can_check_spam --> off
httpd_can_connect_ftp --> off
httpd_can_connect_ldap --> off
httpd_can_connect_mythtv --> off
httpd_can_connect_zabbix --> off
httpd_can_manage_courier_spool --> off
httpd_can_network_connect --> off
httpd_can_network_connect_cobbler --> off
httpd_can_network_connect_db --> off
httpd_can_network_memcache --> off
httpd_can_network_redis --> off
httpd_can_network_relay --> off
httpd_can_sendmail --> off
httpd_dbus_avahi --> off
httpd_dbus_sssd --> off
httpd_dontaudit_search_dirs --> off
httpd_enable_cgi --> on
httpd_enable_ftp_server --> off
httpd_enable_homedirs --> off
httpd_execmem --> off
httpd_graceful_shutdown --> off
httpd_manage_ipa --> off
httpd_mod_auth_ntlm_winbind --> off
httpd_mod_auth_pam --> off
httpd_read_user_content --> off
httpd_run_ipa --> off
httpd_run_preupgrade --> off
httpd_run_stickshift --> off
httpd_serve_cobbler_files --> off
httpd_setrlimit --> off
httpd_ssi_exec --> off
httpd_sys_script_anon_write --> off
httpd_tmp_exec --> off
httpd_tty_comm --> off
httpd_unified --> off
httpd_use_cifs --> off
httpd_use_fusefs --> off
httpd_use_gpg --> off
httpd_use_nfs --> off
httpd_use_opencryptoki --> off
httpd_use_openstack --> off
httpd_use_sasl --> off
httpd_verify_dns --> off
sergey@centos10:~$ sudo systemctl restart nginx.service 
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
sergey@centos10:~$ sudo grep AVC /var/log/audit/audit.log | audit2why
type=AVC msg=audit(1787335550.632:268): avc:  denied  { getattr } for  pid=4290 comm="gnome-remote-de" path="/dev/tpm0" dev="devtmpfs" ino=101 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:tpm_device_t:s0 tclass=chr_file permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787335550.632:269): avc:  denied  { getattr } for  pid=4290 comm="gnome-remote-de" path="/dev/tpmrm0" dev="devtmpfs" ino=102 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:tpm_device_t:s0 tclass=chr_file permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787335550.633:270): avc:  denied  { name_connect } for  pid=4290 comm="gnome-remote-de" dest=2321 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787335550.633:271): avc:  denied  { name_connect } for  pid=4290 comm="gnome-remote-de" dest=2321 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787335550.633:272): avc:  denied  { name_connect } for  pid=4290 comm="gnome-remote-de" dest=2321 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787335550.633:273): avc:  denied  { name_connect } for  pid=4290 comm="gnome-remote-de" dest=2321 scontext=system_u:system_r:gnome_remote_desktop_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
		Missing type enforcement (TE) allow rule.

		You can use audit2allow to generate a loadable module to allow this access.

type=AVC msg=audit(1787336451.586:682): avc:  denied  { name_bind } for  pid=5674 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
	The boolean nis_enabled was set incorrectly. 
	Description:
	Allow nis to enabled

	Allow access by executing:
	# setsebool -P nis_enabled 1
type=AVC msg=audit(1787339754.006:2116): avc:  denied  { name_bind } for  pid=7605 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
	The boolean nis_enabled was set incorrectly. 
	Description:
	Allow nis to enabled

	Allow access by executing:
	# setsebool -P nis_enabled 1
type=AVC msg=audit(1787339860.414:2218): avc:  denied  { name_bind } for  pid=7716 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=1

	Was caused by:
	The boolean nis_enabled was set incorrectly. 
	Description:
	Allow nis to enabled

	Allow access by executing:
	# setsebool -P nis_enabled 1
type=AVC msg=audit(1787339922.854:2327): avc:  denied  { name_bind } for  pid=7825 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
	The boolean nis_enabled was set incorrectly. 
	Description:
	Allow nis to enabled

	Allow access by executing:
	# setsebool -P nis_enabled 1
type=AVC msg=audit(1787340075.429:2427): avc:  denied  { name_bind } for  pid=7932 comm="nginx" src=8088 scontext=system_u:system_r:httpd_t:s0 tcontext=system_u:object_r:unreserved_port_t:s0 tclass=tcp_socket permissive=0

	Was caused by:
	The boolean nis_enabled was set incorrectly. 
	Description:
	Allow nis to enabled

	Allow access by executing:
	# setsebool -P nis_enabled 1
sergey@centos10:~$ sudo setsebool -P nis_enabled 1
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ sudo systemctl status nginx.service 
● nginx.service - The nginx HTTP and reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: disabled)
     Active: active (running) since Fri 2026-08-21 22:24:02 MSK; 7s ago
 Invocation: c1973104da3145299fbaca85a9b53e7b
    Process: 8068 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
    Process: 8069 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
    Process: 8071 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
   Main PID: 8073 (nginx)
      Tasks: 3 (limit: 48037)
     Memory: 3.2M (peak: 3.5M)
        CPU: 38ms
     CGroup: /system.slice/nginx.service
             ├─8073 "nginx: master process /usr/sbin/nginx"
             ├─8074 "nginx: worker process"
             └─8075 "nginx: worker process"

авг 21 22:24:02 centos10 systemd[1]: Starting nginx.service - The nginx HTTP and reverse proxy server...
авг 21 22:24:02 centos10 nginx[8069]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
авг 21 22:24:02 centos10 nginx[8069]: nginx: configuration file /etc/nginx/nginx.conf test is successful
авг 21 22:24:02 centos10 systemd[1]: Started nginx.service - The nginx HTTP and reverse proxy server.
sergey@centos10:~$ sudo setsebool -P nis_enabled 0
sergey@centos10:~$ sudo systemctl restart nginx.service 
Job for nginx.service failed because the control process exited with error code.
See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.
sergey@centos10:~$ sudo setsebool -P nis_enabled 1
sergey@centos10:~$ sudo systemctl restart nginx.service 
sergey@centos10:~$ 

