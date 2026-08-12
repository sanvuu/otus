Welcome to Ubuntu 26.04 LTS (GNU/Linux 7.0.0-28-generic x86_64)

 * Documentation:  https://docs.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Aug 12 07:25:24 PM MSK 2026

  System load:  0.04               Processes:             121
  Usage of /:   16.3% of 28.76GB   Users logged in:       0
  Memory usage: 12%                IPv4 address for ens3: 147.78.66.245
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Applications is enabled.

9 updates can be applied immediately.
To see these additional updates run: apt list --upgradable


Last login: Mon Aug 10 16:52:44 2026 from 94.247.209.184
root@zauz:~# ssh sergey@192.168.88.123
The authenticity of host '192.168.88.123 (192.168.88.123)' can't be established.
ED25519 key fingerprint is: SHA256:bpaqtXrHgo/YynR2s9nz2v6ihEqMrLe0ga5POBrACP4
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.88.123' (ED25519) to the list of known hosts.
sergey@192.168.88.123's password: 
Welcome to Ubuntu 26.04 LTS (GNU/Linux 7.0.0-29-generic x86_64)

 * Documentation:  https://docs.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of ср 12 авг 2026 19:25:48 MSK

  System load:  0.0               Temperature:           45.0 C
  Usage of /:   12.1% of 1.75TB   Processes:             410
  Memory usage: 2%                Users logged in:       0
  Swap usage:   0%                IPv4 address for wlo1: 192.168.88.123

Расширенное поддержание безопасности (ESM) для Applications включено.

21 обновление может быть применено немедленно.
1 из этих обновлений, является стандартным обновлением безопасности.
Чтобы просмотреть дополнительные обновления выполните: apt list --upgradable

Last login: Tue Aug 11 19:56:09 2026 from 192.168.88.140
sergey@uchuwi:~$ ll
total 184
drwxr-x---+ 31 sergey sergey  4096 Aug 11 20:35  ./
drwxr-xr-x   3 root   root    4096 Jun  1 23:32  ../
drwxrwxr-x   5 sergey sergey  4096 Jun 20 13:00  .1C/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 12:02  .1cv8/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 13:01  .1cv82/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:27  .NmhTransport/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:21  .Tensor/
-rw-------   1 sergey sergey 26426 Aug 12 09:47  .bash_history
-rw-r--r--   1 sergey sergey   220 Feb 13 15:16  .bash_logout
-rw-r--r--   1 sergey sergey  3771 Feb 13 15:16  .bashrc
drwx------  31 sergey sergey  4096 Aug  7 19:15  .cache/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 11:01  .ccnet/
drwx------  34 sergey sergey  4096 Aug  8 10:02  .config/
drwx------   2 sergey sergey  4096 Aug  8 11:03  .cups/
-rw-rw-r--   1 sergey sergey    50 Jul  9 00:42  .gitconfig
drwx------   4 sergey sergey  4096 Jul 29 20:55  .gnupg/
drwx------   5 sergey sergey  4096 Jul 22 20:10  .local/
drwx------   3 sergey sergey  4096 Jul 15 21:19  .mozilla/
-rw-r--r--   1 sergey sergey   807 Feb 13 15:16  .profile
drwx------   2 sergey sergey  4096 Aug  6 15:32  .ssh/
drwxrwxrwx   4 sergey sergey  4096 Jul  5 20:21  .tmp/
-rw-rw-r--   1 sergey sergey   221 Jul 15 21:51  .wget-hsts
drwxrwxr-x   6 sergey sergey  4096 Aug  8 10:02  Nextcloud/
drwxrwxr-x   4 sergey sergey  4096 Jun 20 13:05  Seafile/
drwxrwxr-x   3 sergey sergey  4096 Jul 25 12:24  Sync/
drwx------   3 sergey sergey  4096 Jul 15 21:19  bin/
-rwxrwxr-x   1 sergey sergey  1010 Jun  7 18:38  check-dns.sh*
-rwxrwxr-x   1 sergey sergey  1833 Aug 11 20:35  get_open_files.sh*
drwxrwxr-x  11 sergey sergey  4096 Aug  6 15:59  otus/
drwxrwxr-x   2 sergey sergey  4096 Jul 31 18:02  owncloud/
drwx------  13 sergey sergey  4096 Aug  7 19:13  snap/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Видео/
drwxr-xr-x   3 sergey sergey  4096 Aug  8 11:46  Документы/
drwxr-xr-x   6 sergey sergey  4096 Aug  7 19:21  Загрузки/
drwxr-xr-x   3 sergey sergey  4096 Jul 31 17:32  Изображения/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Музыка/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Общедоступные/
drwxr-xr-x   2 sergey sergey  4096 Aug  7 19:20  'Рабочий стол'/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Шаблоны/
sergey@uchuwi:~$ nano get_proc.sh
sergey@uchuwi:~$ nano get_proc2.sh
sergey@uchuwi:~$ ll
total 192
drwxr-x---+ 31 sergey sergey  4096 Aug 12 19:28  ./
drwxr-xr-x   3 root   root    4096 Jun  1 23:32  ../
drwxrwxr-x   5 sergey sergey  4096 Jun 20 13:00  .1C/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 12:02  .1cv8/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 13:01  .1cv82/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:27  .NmhTransport/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:21  .Tensor/
-rw-------   1 sergey sergey 26426 Aug 12 09:47  .bash_history
-rw-r--r--   1 sergey sergey   220 Feb 13 15:16  .bash_logout
-rw-r--r--   1 sergey sergey  3771 Feb 13 15:16  .bashrc
drwx------  31 sergey sergey  4096 Aug  7 19:15  .cache/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 11:01  .ccnet/
drwx------  34 sergey sergey  4096 Aug  8 10:02  .config/
drwx------   2 sergey sergey  4096 Aug  8 11:03  .cups/
-rw-rw-r--   1 sergey sergey    50 Jul  9 00:42  .gitconfig
drwx------   4 sergey sergey  4096 Jul 29 20:55  .gnupg/
drwx------   5 sergey sergey  4096 Jul 22 20:10  .local/
drwx------   3 sergey sergey  4096 Jul 15 21:19  .mozilla/
-rw-r--r--   1 sergey sergey   807 Feb 13 15:16  .profile
drwx------   2 sergey sergey  4096 Aug  6 15:32  .ssh/
drwxrwxrwx   4 sergey sergey  4096 Jul  5 20:21  .tmp/
-rw-rw-r--   1 sergey sergey   221 Jul 15 21:51  .wget-hsts
drwxrwxr-x   6 sergey sergey  4096 Aug  8 10:02  Nextcloud/
drwxrwxr-x   4 sergey sergey  4096 Jun 20 13:05  Seafile/
drwxrwxr-x   3 sergey sergey  4096 Jul 25 12:24  Sync/
drwx------   3 sergey sergey  4096 Jul 15 21:19  bin/
-rwxrwxr-x   1 sergey sergey  1010 Jun  7 18:38  check-dns.sh*
-rwxrwxr-x   1 sergey sergey  1833 Aug 11 20:35  get_open_files.sh*
-rw-rw-r--   1 sergey sergey  1297 Aug 12 19:28  get_proc.sh
-rw-rw-r--   1 sergey sergey  1188 Aug 12 19:28  get_proc2.sh
drwxrwxr-x  11 sergey sergey  4096 Aug  6 15:59  otus/
drwxrwxr-x   2 sergey sergey  4096 Jul 31 18:02  owncloud/
drwx------  13 sergey sergey  4096 Aug  7 19:13  snap/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Видео/
drwxr-xr-x   3 sergey sergey  4096 Aug  8 11:46  Документы/
drwxr-xr-x   6 sergey sergey  4096 Aug  7 19:21  Загрузки/
drwxr-xr-x   3 sergey sergey  4096 Jul 31 17:32  Изображения/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Музыка/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Общедоступные/
drwxr-xr-x   2 sergey sergey  4096 Aug  7 19:20  'Рабочий стол'/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Шаблоны/
sergey@uchuwi:~$ chmod +x get_proc.sh get_proc2.sh 
sergey@uchuwi:~$ ll
total 192
drwxr-x---+ 31 sergey sergey  4096 Aug 12 19:28  ./
drwxr-xr-x   3 root   root    4096 Jun  1 23:32  ../
drwxrwxr-x   5 sergey sergey  4096 Jun 20 13:00  .1C/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 12:02  .1cv8/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 13:01  .1cv82/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:27  .NmhTransport/
drwxrwxr-x   3 sergey sergey  4096 Jul  5 20:21  .Tensor/
-rw-------   1 sergey sergey 26426 Aug 12 09:47  .bash_history
-rw-r--r--   1 sergey sergey   220 Feb 13 15:16  .bash_logout
-rw-r--r--   1 sergey sergey  3771 Feb 13 15:16  .bashrc
drwx------  31 sergey sergey  4096 Aug  7 19:15  .cache/
drwxrwxr-x   3 sergey sergey  4096 Jun 20 11:01  .ccnet/
drwx------  34 sergey sergey  4096 Aug  8 10:02  .config/
drwx------   2 sergey sergey  4096 Aug  8 11:03  .cups/
-rw-rw-r--   1 sergey sergey    50 Jul  9 00:42  .gitconfig
drwx------   4 sergey sergey  4096 Jul 29 20:55  .gnupg/
drwx------   5 sergey sergey  4096 Jul 22 20:10  .local/
drwx------   3 sergey sergey  4096 Jul 15 21:19  .mozilla/
-rw-r--r--   1 sergey sergey   807 Feb 13 15:16  .profile
drwx------   2 sergey sergey  4096 Aug  6 15:32  .ssh/
drwxrwxrwx   4 sergey sergey  4096 Jul  5 20:21  .tmp/
-rw-rw-r--   1 sergey sergey   221 Jul 15 21:51  .wget-hsts
drwxrwxr-x   6 sergey sergey  4096 Aug  8 10:02  Nextcloud/
drwxrwxr-x   4 sergey sergey  4096 Jun 20 13:05  Seafile/
drwxrwxr-x   3 sergey sergey  4096 Jul 25 12:24  Sync/
drwx------   3 sergey sergey  4096 Jul 15 21:19  bin/
-rwxrwxr-x   1 sergey sergey  1010 Jun  7 18:38  check-dns.sh*
-rwxrwxr-x   1 sergey sergey  1833 Aug 11 20:35  get_open_files.sh*
-rwxrwxr-x   1 sergey sergey  1297 Aug 12 19:28  get_proc.sh*
-rwxrwxr-x   1 sergey sergey  1188 Aug 12 19:28  get_proc2.sh*
drwxrwxr-x  11 sergey sergey  4096 Aug  6 15:59  otus/
drwxrwxr-x   2 sergey sergey  4096 Jul 31 18:02  owncloud/
drwx------  13 sergey sergey  4096 Aug  7 19:13  snap/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Видео/
drwxr-xr-x   3 sergey sergey  4096 Aug  8 11:46  Документы/
drwxr-xr-x   6 sergey sergey  4096 Aug  7 19:21  Загрузки/
drwxr-xr-x   3 sergey sergey  4096 Jul 31 17:32  Изображения/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Музыка/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Общедоступные/
drwxr-xr-x   2 sergey sergey  4096 Aug  7 19:20  'Рабочий стол'/
drwxr-xr-x   2 sergey sergey  4096 Jun  1 23:42  Шаблоны/
sergey@uchuwi:~$ get
getcap                gethostlatency.bt     gettext
getconf               getkeycodes           gettext.sh
getent                getopt                getty
getfacl               getopts               getweb
gethostlatency-bpfcc  getpcaps              
sergey@uchuwi:~$ ./get_proc2.sh 
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
1          0          S (sleeping)              systemd
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
101        2          S (sleeping)              cpuhp/1
1010       2          I (idle)                  kworker/R-cfg80211
102        2          S (sleeping)              idle_inject/1
1029       2          S (sleeping)              irq/162-mei_me
103        2          S (sleeping)              migration/1
104        2          S (sleeping)              ksoftirqd/1
106        2          I (idle)                  kworker/1:0H-kblockd
107        2          S (sleeping)              cpuhp/3
108        2          S (sleeping)              idle_inject/3
109        2          S (sleeping)              migration/3
1092       2          S (sleeping)              irq/163-iwlwifi:default_queue
1093       2          S (sleeping)              irq/164-iwlwifi:queue_1
1094       2          S (sleeping)              irq/165-iwlwifi:queue_2
1095       2          S (sleeping)              irq/166-iwlwifi:queue_3
1096       2          S (sleeping)              irq/167-iwlwifi:queue_4
1097       2          S (sleeping)              irq/168-iwlwifi:queue_5
1098       2          S (sleeping)              irq/169-iwlwifi:queue_6
1099       2          S (sleeping)              irq/170-iwlwifi:queue_7
110        2          S (sleeping)              ksoftirqd/3
1100       2          S (sleeping)              irq/171-iwlwifi:queue_8
1101       2          S (sleeping)              irq/172-iwlwifi:queue_9
1103       2          S (sleeping)              irq/173-iwlwifi:queue_10
1104       2          S (sleeping)              irq/174-iwlwifi:queue_11
1105       2          S (sleeping)              irq/175-iwlwifi:queue_12
1106       2          S (sleeping)              irq/176-iwlwifi:queue_13
1107       2          S (sleeping)              irq/177-iwlwifi:queue_14
1108       2          S (sleeping)              irq/178-iwlwifi:exception
112        2          I (idle)                  kworker/3:0H-kblockd
113        2          S (sleeping)              cpuhp/5
114        2          S (sleeping)              idle_inject/5
115        2          S (sleeping)              migration/5
116        2          S (sleeping)              ksoftirqd/5
118        2          I (idle)                  kworker/5:0H-mmc_complete
119        2          S (sleeping)              cpuhp/7
120        2          S (sleeping)              idle_inject/7
121        2          S (sleeping)              migration/7
122        2          S (sleeping)              ksoftirqd/7
124        2          I (idle)                  kworker/7:0H-mmc_complete
125        2          S (sleeping)              cpuhp/9
126        2          S (sleeping)              idle_inject/9
127        2          S (sleeping)              migration/9
128        2          S (sleeping)              ksoftirqd/9
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
131        2          S (sleeping)              cpuhp/11
132        2          S (sleeping)              idle_inject/11
1320       2          S (sleeping)              irq/16-processor_thermal_device_pci
1321       2          I (idle)                  kworker/R-ttm
1328       2          S (sleeping)              card1-crtc0
1329       2          S (sleeping)              card1-crtc1
133        2          S (sleeping)              migration/11
1330       2          S (sleeping)              card1-crtc2
1331       2          S (sleeping)              card1-crtc3
134        2          S (sleeping)              ksoftirqd/11
136        2          I (idle)                  kworker/11:0H-mmc_complete
137        2          S (sleeping)              kdevtmpfs
138        2          I (idle)                  kworker/R-inet_frag_wq
139        2          I (idle)                  rcu_tasks_kthread
1396       2          I (idle)                  kworker/1:1H-kblockd
14         2          S (sleeping)              ksoftirqd/0
140        2          I (idle)                  rcu_tasks_rude_kthread
141        2          S (sleeping)              kauditd
142        2          S (sleeping)              khungtaskd
143        2          S (sleeping)              oom_reaper
146        2          I (idle)                  kworker/R-writeback
147        2          S (sleeping)              kcompactd0
148        2          S (sleeping)              ksmd
149        2          S (sleeping)              khugepaged
15         2          I (idle)                  rcu_preempt
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
154        2          S (sleeping)              irq/9-acpi
159        2          I (idle)                  kworker/R-tpm_dev_wq
16         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/1
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
166        2          S (sleeping)              watchdogd
167        2          I (idle)                  kworker/R-quota_events_unbound
168        2          S (sleeping)              kswapd0
169        2          S (sleeping)              ecryptfs-kthread
17         2          S (sleeping)              rcu_exp_gp_kthread_worker
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
174        2          S (sleeping)              hwrng
178        2          I (idle)                  kworker/R-hfi-updates
18         2          S (sleeping)              migration/0
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
1833       1          S (sleeping)              avahi-daemon
1834       1          S (sleeping)              bluetoothd
1836       1          S (sleeping)              chronyd-starter
1837       1          S (sleeping)              dbus-daemon
1842       1          S (sleeping)              gnome-remote-de
1847       1          S (sleeping)              networkd-dispat
1850       1          S (sleeping)              polkitd
1864       1          S (sleeping)              accounts-daemon
1867       1          S (sleeping)              switcheroo-cont
1874       1          S (sleeping)              systemd-logind
1879       1          S (sleeping)              thermald
1881       1          S (sleeping)              udisksd
1886       1          S (sleeping)              virtlockd
1898       1          S (sleeping)              virtlogd
19         2          S (sleeping)              kprobe-optimizer
1931       1833       S (sleeping)              avahi-daemon
1963       1836       S (sleeping)              chronyd
1966       1963       S (sleeping)              chronyd
1973       1          S (sleeping)              rsyslogd
1980       1          S (sleeping)              NetworkManager
1986       1          S (sleeping)              wpa_supplicant
2          0          S (sleeping)              kthreadd
20         2          S (sleeping)              idle_inject/0
201        2          I (idle)                  kworker/R-charger_manager
2045       1          S (sleeping)              ModemManager
2057       1          S (sleeping)              upowerd
2072       1          S (sleeping)              AmneziaVPN-serv
21         2          S (sleeping)              cpuhp/0
2102       1          S (sleeping)              canonical-livep
2108       1          S (sleeping)              run-cups-browse
2109       1          S (sleeping)              run-cupsd
2111       1          S (sleeping)              syncthing
2112       1          S (sleeping)              unattended-upgr
2113       2072       S (sleeping)              AmneziaVPN-serv
2154       1          S (sleeping)              colord
2165       2111       S (sleeping)              syncthing
22         2          S (sleeping)              cpuhp/2
23         2          S (sleeping)              idle_inject/2
24         2          S (sleeping)              migration/2
25         2          S (sleeping)              ksoftirqd/2
27         2          I (idle)                  kworker/2:0H-mmc_complete
28         2          S (sleeping)              cpuhp/4
2894       2109       S (sleeping)              cupsd
2895       2109       S (sleeping)              cups-proxyd
2898       2108       S (sleeping)              run-cups-browse
29         2          S (sleeping)              idle_inject/4
2965       1          S (sleeping)              cron
2968       1          S (sleeping)              libvirtd
3          2          S (sleeping)              pool_workqueue_release
30         2          S (sleeping)              migration/4
3018       1          S (sleeping)              sabycenter
3020       3018       S (sleeping)              sabycenter
3066       1          S (sleeping)              gdm3
31         2          S (sleeping)              ksoftirqd/4
3207       3066       S (sleeping)              gdm-session-wor
32351      1          S (sleeping)              sshd
3238       1          S (sleeping)              smbd
33         2          I (idle)                  kworker/4:0H-mmc_complete
3352       1          S (sleeping)              systemd
3385       3238       S (sleeping)              smbd-notifyd
3386       3238       S (sleeping)              smbd-cleanupd
34         2          S (sleeping)              cpuhp/6
3471       3352       S (sleeping)              (sd-pam)
35         2          S (sleeping)              idle_inject/6
36         2          S (sleeping)              migration/6
3672       1          S (sleeping)              dnsmasq
3673       3672       S (sleeping)              dnsmasq
37         2          S (sleeping)              ksoftirqd/6
3721       3352       S (sleeping)              dbus-daemon
3722       3352       S (sleeping)              pipewire
3724       3207       S (sleeping)              gdm-wayland-ses
3778       3724       S (sleeping)              gnome-session-i
3779       3352       S (sleeping)              mpris-proxy
3780       3352       S (sleeping)              wireplumber
3781       3352       S (sleeping)              pipewire
3782       1          S (sleeping)              rtkit-daemon
3783       3352       S (sleeping)              pipewire-pulse
3796       3020       S (sleeping)              sabycenter
3821       3352       S (sleeping)              gcr-ssh-agent
3822       3352       S (sleeping)              gnome-keyring-d
3823       3352       S (sleeping)              gnome-session-c
3824       3352       S (sleeping)              ssh-agent
39         2          I (idle)                  kworker/6:0H-mmc_complete
3914       3352       S (sleeping)              xdg-document-po
3918       3352       S (sleeping)              xdg-permission-
3926       3914       S (sleeping)              fusermount3
3956       2          S (sleeping)              krfcommd
3969       3352       S (sleeping)              gnome-session-s
3990       3352       S (sleeping)              gnome-shell
4          2          I (idle)                  kworker/R-rcu_gp
40         2          S (sleeping)              cpuhp/8
4034       3352       S (sleeping)              at-spi-bus-laun
4041       4034       S (sleeping)              dbus-daemon
4043       3352       S (sleeping)              at-spi2-registr
4080       3352       S (sleeping)              gjs
41         2          S (sleeping)              idle_inject/8
4101       3352       S (sleeping)              ibus-daemon
4104       3352       S (sleeping)              gsd-a11y-settin
4113       3352       S (sleeping)              gsd-keyboard
4114       3352       S (sleeping)              gsd-media-keys
4116       3352       S (sleeping)              gsd-power
4120       3352       S (sleeping)              gsd-rfkill
4122       3352       S (sleeping)              gsd-sharing
4123       3352       S (sleeping)              gsd-smartcard
4125       3352       S (sleeping)              gsd-usb-protect
4165       3352       S (sleeping)              gjs
42         2          S (sleeping)              migration/8
4251       4101       S (sleeping)              ibus-memconf
4257       3352       S (sleeping)              ibus-portal
43         2          S (sleeping)              ksoftirqd/8
44110      1          S (sleeping)              cupsd
44112      44110      S (sleeping)              dbus
44113      1          S (sleeping)              cups-browsed
45         2          I (idle)                  kworker/8:0H-mmc_complete
45056      1          S (sleeping)              snapd
46         2          S (sleeping)              cpuhp/10
47         2          S (sleeping)              idle_inject/10
48         2          S (sleeping)              migration/10
48388      1          S (sleeping)              systemd-journal
48559      1          S (sleeping)              systemd-udevd
48578      2          S (sleeping)              psimon
48922      1          S (sleeping)              systemd-machine
49         2          S (sleeping)              ksoftirqd/10
49081      1          S (sleeping)              systemd-oomd
49402      1          S (sleeping)              systemd-resolve
49556      2          S (sleeping)              psimon
5          2          I (idle)                  kworker/R-sync_wq
503        2          S (sleeping)              scsi_eh_0
504        2          I (idle)                  kworker/R-scsi_tmf_0
505        2          S (sleeping)              irq/140-SYNA3602:00
5051       4101       S (sleeping)              ibus-engine-sim
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
52         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/2
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
53         2          S (sleeping)              cpuhp/12
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
534        2          S (sleeping)              spi0
5348       3990       S (sleeping)              Xwayland
535        2          I (idle)                  kworker/10:1H-kblockd
5357       3352       S (sleeping)              gsd-xsettings
5362       3990       S (sleeping)              mutter-x11-fram
537        2          I (idle)                  kworker/6:1H-kblockd
5381       3352       S (sleeping)              ibus-x11
539        2          I (idle)                  kworker/14:1H-kblockd
54         2          S (sleeping)              idle_inject/12
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
5457       3352       S (sleeping)              xdg-desktop-por
55         2          S (sleeping)              migration/12
5530       1          S (sleeping)              power-profiles-
5532       3352       S (sleeping)              xdg-desktop-por
5567       3352       S (sleeping)              xdg-desktop-por
56         2          S (sleeping)              ksoftirqd/12
568        2          S (sleeping)              jbd2/nvme0n1p5-8
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59         2          S (sleeping)              cpuhp/13
59459      2          I (idle)                  kworker/19:2-events_freezable
59633      2          I (idle)                  kworker/18:3-events
59951      2          I (idle)                  kworker/10:3-events
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
60         2          S (sleeping)              idle_inject/13
60076      2          I (idle)                  kworker/18:2-cgroup_release
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_unbound
60172      2          I (idle)                  kworker/16:2-events_freezable
60197      2          I (idle)                  kworker/1:2-events
60250      2898       S (sleeping)              sleep
60260      2          I (idle)                  kworker/15:1-events
60263      2          I (idle)                  kworker/4:1-events_freezable
60265      2          I (idle)                  kworker/6:0-events
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60286      2          I (idle)                  kworker/13:0-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events
60302      2          I (idle)                  kworker/4:2-events
60309      2          I (idle)                  kworker/11:2
60317      2          I (idle)                  kworker/13:3-events_freezable
60318      2          I (idle)                  kworker/7:0-mm_percpu_wq
60321      2          I (idle)                  kworker/5:2
60332      2          I (idle)                  kworker/0:1-events_freezable
60335      2          I (idle)                  kworker/10:2-events
60344      2          I (idle)                  kworker/5:0-events_freezable
60349      2          I (idle)                  kworker/2:3-events_freezable
60350      2          I (idle)                  kworker/12:3-events_freezable
60353      2          I (idle)                  kworker/0:3
60373      2          I (idle)                  kworker/u80:2-events_unbound
60406      2          I (idle)                  kworker/8:0-events
60407      2          I (idle)                  kworker/9:2-events_freezable
60410      2          I (idle)                  kworker/15:0-events
60411      2          I (idle)                  kworker/1:0-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60593      2          I (idle)                  kworker/3:0
60594      2          I (idle)                  kworker/3:1-events
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-events_freezable
60607      2          I (idle)                  kworker/7:3-mm_percpu_wq
60608      2          I (idle)                  kworker/6:3-events
60610      2          I (idle)                  kworker/14:3-events_freezable
60611      2          I (idle)                  kworker/5:1-events_freezable
60612      2          I (idle)                  kworker/2:1-events_freezable
60613      2          I (idle)                  kworker/12:0-events_freezable
60614      2          I (idle)                  kworker/11:3-events
60615      2          I (idle)                  kworker/10:0-events_freezable
60616      2          I (idle)                  kworker/0:2-events_freezable
60617      2          I (idle)                  kworker/3:2-events_freezable
60618      2          I (idle)                  kworker/13:1-events_freezable
60619      2          I (idle)                  kworker/8:2-events_freezable
60620      2          I (idle)                  kworker/9:3-events
60621      32351      S (sleeping)              sshd-session
60627      1          S (sleeping)              systemd
60629      60627      S (sleeping)              (sd-pam)
60650      60627      S (sleeping)              dbus-daemon
60651      60627      S (sleeping)              pipewire
60655      60627      S (sleeping)              user-session-he
60664      60627      S (sleeping)              mpris-proxy
60675      60627      S (sleeping)              wireplumber
60676      60627      S (sleeping)              pipewire
60678      60627      S (sleeping)              pipewire-pulse
60778      60627      S (sleeping)              xdg-document-po
60787      60627      S (sleeping)              xdg-permission-
60794      60778      S (sleeping)              fusermount3
60964      60621      S (sleeping)              sshd-session
60981      60964      S (sleeping)              bash
61         2          S (sleeping)              migration/13
61176      2          I (idle)                  kworker/17:2
61178      2          I (idle)                  kworker/u80:4-flush-259:0
61181      2          I (idle)                  kworker/7:2-events_freezable
61182      2          I (idle)                  kworker/4:3-events_freezable
61183      2          I (idle)                  kworker/6:1-events_freezable
61185      2          I (idle)                  kworker/2:2-events
61186      2          I (idle)                  kworker/1:1-events
61187      2          I (idle)                  kworker/5:3-mm_percpu_wq
61188      2          I (idle)                  kworker/12:1-events
61195      2          I (idle)                  kworker/12:2-events
61206      2          I (idle)                  kworker/11:1
61221      2          I (idle)                  kworker/0:0-events
61227      2          I (idle)                  kworker/10:1-events_freezable
61255      2          I (idle)                  kworker/18:0-events_freezable
61256      2          I (idle)                  kworker/15:2
61257      2          I (idle)                  kworker/13:2-events
61258      2          I (idle)                  kworker/8:1-events_freezable
61259      2          I (idle)                  kworker/18:1
61260      2          I (idle)                  kworker/19:0
61261      2          I (idle)                  kworker/19:3
61262      2          I (idle)                  kworker/4:0-events
61265      2          I (idle)                  kworker/6:2-events_freezable
61271      60981      S (sleeping)              get_proc2.sh
62         2          S (sleeping)              ksoftirqd/13
64         2          I (idle)                  kworker/13:0H-mmc_complete
65         2          S (sleeping)              cpuhp/14
66         2          S (sleeping)              idle_inject/14
67         2          S (sleeping)              migration/14
68         2          S (sleeping)              ksoftirqd/14
6999       1          S (sleeping)              fwupd
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
71         2          S (sleeping)              cpuhp/15
72         2          S (sleeping)              idle_inject/15
73         2          S (sleeping)              migration/15
74         2          S (sleeping)              ksoftirqd/15
76         2          I (idle)                  kworker/15:0H-mmc_complete
77         2          S (sleeping)              cpuhp/16
78         2          S (sleeping)              idle_inject/16
79         2          S (sleeping)              migration/16
8          2          I (idle)                  kworker/R-netns
80         2          S (sleeping)              ksoftirqd/16
82         2          I (idle)                  kworker/16:0H-mmc_complete
83         2          S (sleeping)              cpuhp/17
84         2          S (sleeping)              idle_inject/17
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85         2          S (sleeping)              migration/17
86         2          S (sleeping)              ksoftirqd/17
88         2          I (idle)                  kworker/17:0H-mmc_complete
89         2          S (sleeping)              cpuhp/18
90         2          S (sleeping)              idle_inject/18
91         2          S (sleeping)              migration/18
915        2          I (idle)                  kworker/9:1H-kblockd
92         2          S (sleeping)              ksoftirqd/18
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95         2          S (sleeping)              cpuhp/19
96         2          S (sleeping)              idle_inject/19
97         2          S (sleeping)              migration/19
970        2          I (idle)                  kworker/5:1H-kblockd
98         2          S (sleeping)              ksoftirqd/19
sergey@uchuwi:~$ ./get_proc2.sh | grep -P 'sleeping'
1          0          S (sleeping)              systemd
101        2          S (sleeping)              cpuhp/1
102        2          S (sleeping)              idle_inject/1
1029       2          S (sleeping)              irq/162-mei_me
103        2          S (sleeping)              migration/1
104        2          S (sleeping)              ksoftirqd/1
107        2          S (sleeping)              cpuhp/3
108        2          S (sleeping)              idle_inject/3
109        2          S (sleeping)              migration/3
1092       2          S (sleeping)              irq/163-iwlwifi:default_queue
1093       2          S (sleeping)              irq/164-iwlwifi:queue_1
1094       2          S (sleeping)              irq/165-iwlwifi:queue_2
1095       2          S (sleeping)              irq/166-iwlwifi:queue_3
1096       2          S (sleeping)              irq/167-iwlwifi:queue_4
1097       2          S (sleeping)              irq/168-iwlwifi:queue_5
1098       2          S (sleeping)              irq/169-iwlwifi:queue_6
1099       2          S (sleeping)              irq/170-iwlwifi:queue_7
110        2          S (sleeping)              ksoftirqd/3
1100       2          S (sleeping)              irq/171-iwlwifi:queue_8
1101       2          S (sleeping)              irq/172-iwlwifi:queue_9
1103       2          S (sleeping)              irq/173-iwlwifi:queue_10
1104       2          S (sleeping)              irq/174-iwlwifi:queue_11
1105       2          S (sleeping)              irq/175-iwlwifi:queue_12
1106       2          S (sleeping)              irq/176-iwlwifi:queue_13
1107       2          S (sleeping)              irq/177-iwlwifi:queue_14
1108       2          S (sleeping)              irq/178-iwlwifi:exception
113        2          S (sleeping)              cpuhp/5
114        2          S (sleeping)              idle_inject/5
115        2          S (sleeping)              migration/5
116        2          S (sleeping)              ksoftirqd/5
119        2          S (sleeping)              cpuhp/7
120        2          S (sleeping)              idle_inject/7
121        2          S (sleeping)              migration/7
122        2          S (sleeping)              ksoftirqd/7
125        2          S (sleeping)              cpuhp/9
126        2          S (sleeping)              idle_inject/9
127        2          S (sleeping)              migration/9
128        2          S (sleeping)              ksoftirqd/9
131        2          S (sleeping)              cpuhp/11
132        2          S (sleeping)              idle_inject/11
1320       2          S (sleeping)              irq/16-processor_thermal_device_pci
1328       2          S (sleeping)              card1-crtc0
1329       2          S (sleeping)              card1-crtc1
133        2          S (sleeping)              migration/11
1330       2          S (sleeping)              card1-crtc2
1331       2          S (sleeping)              card1-crtc3
134        2          S (sleeping)              ksoftirqd/11
137        2          S (sleeping)              kdevtmpfs
14         2          S (sleeping)              ksoftirqd/0
141        2          S (sleeping)              kauditd
142        2          S (sleeping)              khungtaskd
143        2          S (sleeping)              oom_reaper
147        2          S (sleeping)              kcompactd0
148        2          S (sleeping)              ksmd
149        2          S (sleeping)              khugepaged
154        2          S (sleeping)              irq/9-acpi
16         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/1
166        2          S (sleeping)              watchdogd
168        2          S (sleeping)              kswapd0
169        2          S (sleeping)              ecryptfs-kthread
17         2          S (sleeping)              rcu_exp_gp_kthread_worker
174        2          S (sleeping)              hwrng
18         2          S (sleeping)              migration/0
1833       1          S (sleeping)              avahi-daemon
1834       1          S (sleeping)              bluetoothd
1836       1          S (sleeping)              chronyd-starter
1837       1          S (sleeping)              dbus-daemon
1842       1          S (sleeping)              gnome-remote-de
1847       1          S (sleeping)              networkd-dispat
1850       1          S (sleeping)              polkitd
1864       1          S (sleeping)              accounts-daemon
1867       1          S (sleeping)              switcheroo-cont
1874       1          S (sleeping)              systemd-logind
1879       1          S (sleeping)              thermald
1881       1          S (sleeping)              udisksd
1886       1          S (sleeping)              virtlockd
1898       1          S (sleeping)              virtlogd
19         2          S (sleeping)              kprobe-optimizer
1931       1833       S (sleeping)              avahi-daemon
1963       1836       S (sleeping)              chronyd
1966       1963       S (sleeping)              chronyd
1973       1          S (sleeping)              rsyslogd
1980       1          S (sleeping)              NetworkManager
1986       1          S (sleeping)              wpa_supplicant
2          0          S (sleeping)              kthreadd
20         2          S (sleeping)              idle_inject/0
2045       1          S (sleeping)              ModemManager
2057       1          S (sleeping)              upowerd
2072       1          S (sleeping)              AmneziaVPN-serv
21         2          S (sleeping)              cpuhp/0
2102       1          S (sleeping)              canonical-livep
2108       1          S (sleeping)              run-cups-browse
2109       1          S (sleeping)              run-cupsd
2111       1          S (sleeping)              syncthing
2112       1          S (sleeping)              unattended-upgr
2113       2072       S (sleeping)              AmneziaVPN-serv
2154       1          S (sleeping)              colord
2165       2111       S (sleeping)              syncthing
22         2          S (sleeping)              cpuhp/2
23         2          S (sleeping)              idle_inject/2
24         2          S (sleeping)              migration/2
25         2          S (sleeping)              ksoftirqd/2
28         2          S (sleeping)              cpuhp/4
2894       2109       S (sleeping)              cupsd
2895       2109       S (sleeping)              cups-proxyd
2898       2108       S (sleeping)              run-cups-browse
29         2          S (sleeping)              idle_inject/4
2965       1          S (sleeping)              cron
2968       1          S (sleeping)              libvirtd
3          2          S (sleeping)              pool_workqueue_release
30         2          S (sleeping)              migration/4
3018       1          S (sleeping)              sabycenter
3020       3018       S (sleeping)              sabycenter
3066       1          S (sleeping)              gdm3
31         2          S (sleeping)              ksoftirqd/4
3207       3066       S (sleeping)              gdm-session-wor
32351      1          S (sleeping)              sshd
3238       1          S (sleeping)              smbd
3352       1          S (sleeping)              systemd
3385       3238       S (sleeping)              smbd-notifyd
3386       3238       S (sleeping)              smbd-cleanupd
34         2          S (sleeping)              cpuhp/6
3471       3352       S (sleeping)              (sd-pam)
35         2          S (sleeping)              idle_inject/6
36         2          S (sleeping)              migration/6
3672       1          S (sleeping)              dnsmasq
3673       3672       S (sleeping)              dnsmasq
37         2          S (sleeping)              ksoftirqd/6
3721       3352       S (sleeping)              dbus-daemon
3722       3352       S (sleeping)              pipewire
3724       3207       S (sleeping)              gdm-wayland-ses
3778       3724       S (sleeping)              gnome-session-i
3779       3352       S (sleeping)              mpris-proxy
3780       3352       S (sleeping)              wireplumber
3781       3352       S (sleeping)              pipewire
3782       1          S (sleeping)              rtkit-daemon
3783       3352       S (sleeping)              pipewire-pulse
3796       3020       S (sleeping)              sabycenter
3821       3352       S (sleeping)              gcr-ssh-agent
3822       3352       S (sleeping)              gnome-keyring-d
3823       3352       S (sleeping)              gnome-session-c
3824       3352       S (sleeping)              ssh-agent
3914       3352       S (sleeping)              xdg-document-po
3918       3352       S (sleeping)              xdg-permission-
3926       3914       S (sleeping)              fusermount3
3956       2          S (sleeping)              krfcommd
3969       3352       S (sleeping)              gnome-session-s
3990       3352       S (sleeping)              gnome-shell
40         2          S (sleeping)              cpuhp/8
4034       3352       S (sleeping)              at-spi-bus-laun
4041       4034       S (sleeping)              dbus-daemon
4043       3352       S (sleeping)              at-spi2-registr
4080       3352       S (sleeping)              gjs
41         2          S (sleeping)              idle_inject/8
4101       3352       S (sleeping)              ibus-daemon
4104       3352       S (sleeping)              gsd-a11y-settin
4113       3352       S (sleeping)              gsd-keyboard
4114       3352       S (sleeping)              gsd-media-keys
4116       3352       S (sleeping)              gsd-power
4120       3352       S (sleeping)              gsd-rfkill
4122       3352       S (sleeping)              gsd-sharing
4123       3352       S (sleeping)              gsd-smartcard
4125       3352       S (sleeping)              gsd-usb-protect
4165       3352       S (sleeping)              gjs
42         2          S (sleeping)              migration/8
4251       4101       S (sleeping)              ibus-memconf
4257       3352       S (sleeping)              ibus-portal
43         2          S (sleeping)              ksoftirqd/8
44110      1          S (sleeping)              cupsd
44112      44110      S (sleeping)              dbus
44113      1          S (sleeping)              cups-browsed
45056      1          S (sleeping)              snapd
46         2          S (sleeping)              cpuhp/10
47         2          S (sleeping)              idle_inject/10
48         2          S (sleeping)              migration/10
48388      1          S (sleeping)              systemd-journal
48559      1          S (sleeping)              systemd-udevd
48578      2          S (sleeping)              psimon
48922      1          S (sleeping)              systemd-machine
49         2          S (sleeping)              ksoftirqd/10
49081      1          S (sleeping)              systemd-oomd
49402      1          S (sleeping)              systemd-resolve
49556      2          S (sleeping)              psimon
503        2          S (sleeping)              scsi_eh_0
505        2          S (sleeping)              irq/140-SYNA3602:00
5051       4101       S (sleeping)              ibus-engine-sim
52         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/2
53         2          S (sleeping)              cpuhp/12
534        2          S (sleeping)              spi0
5348       3990       S (sleeping)              Xwayland
5357       3352       S (sleeping)              gsd-xsettings
5362       3990       S (sleeping)              mutter-x11-fram
5381       3352       S (sleeping)              ibus-x11
54         2          S (sleeping)              idle_inject/12
5457       3352       S (sleeping)              xdg-desktop-por
55         2          S (sleeping)              migration/12
5530       1          S (sleeping)              power-profiles-
5532       3352       S (sleeping)              xdg-desktop-por
5567       3352       S (sleeping)              xdg-desktop-por
56         2          S (sleeping)              ksoftirqd/12
568        2          S (sleeping)              jbd2/nvme0n1p5-8
59         2          S (sleeping)              cpuhp/13
60         2          S (sleeping)              idle_inject/13
60250      2898       S (sleeping)              sleep
60621      32351      S (sleeping)              sshd-session
60627      1          S (sleeping)              systemd
60629      60627      S (sleeping)              (sd-pam)
60650      60627      S (sleeping)              dbus-daemon
60651      60627      S (sleeping)              pipewire
60655      60627      S (sleeping)              user-session-he
60664      60627      S (sleeping)              mpris-proxy
60675      60627      S (sleeping)              wireplumber
60676      60627      S (sleeping)              pipewire
60678      60627      S (sleeping)              pipewire-pulse
60778      60627      S (sleeping)              xdg-document-po
60787      60627      S (sleeping)              xdg-permission-
60794      60778      S (sleeping)              fusermount3
60964      60621      S (sleeping)              sshd-session
60981      60964      S (sleeping)              bash
61         2          S (sleeping)              migration/13
62         2          S (sleeping)              ksoftirqd/13
65         2          S (sleeping)              cpuhp/14
66         2          S (sleeping)              idle_inject/14
66107      60981      S (sleeping)              get_proc2.sh
66108      60981      S (sleeping)              grep
67         2          S (sleeping)              migration/14
68         2          S (sleeping)              ksoftirqd/14
6999       1          S (sleeping)              fwupd
71         2          S (sleeping)              cpuhp/15
72         2          S (sleeping)              idle_inject/15
73         2          S (sleeping)              migration/15
74         2          S (sleeping)              ksoftirqd/15
77         2          S (sleeping)              cpuhp/16
78         2          S (sleeping)              idle_inject/16
79         2          S (sleeping)              migration/16
80         2          S (sleeping)              ksoftirqd/16
83         2          S (sleeping)              cpuhp/17
84         2          S (sleeping)              idle_inject/17
85         2          S (sleeping)              migration/17
86         2          S (sleeping)              ksoftirqd/17
89         2          S (sleeping)              cpuhp/18
90         2          S (sleeping)              idle_inject/18
91         2          S (sleeping)              migration/18
92         2          S (sleeping)              ksoftirqd/18
95         2          S (sleeping)              cpuhp/19
96         2          S (sleeping)              idle_inject/19
97         2          S (sleeping)              migration/19
98         2          S (sleeping)              ksoftirqd/19
sergey@uchuwi:~$ ./get_proc2.sh | grep -P 'R'
1010       2          I (idle)                  kworker/R-cfg80211
13         2          I (idle)                  kworker/R-mm_percpu_wq
1321       2          I (idle)                  kworker/R-ttm
138        2          I (idle)                  kworker/R-inet_frag_wq
146        2          I (idle)                  kworker/R-writeback
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
159        2          I (idle)                  kworker/R-tpm_dev_wq
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
167        2          I (idle)                  kworker/R-quota_events_unbound
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
178        2          I (idle)                  kworker/R-hfi-updates
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
201        2          I (idle)                  kworker/R-charger_manager
4          2          I (idle)                  kworker/R-rcu_gp
5          2          I (idle)                  kworker/R-sync_wq
504        2          I (idle)                  kworker/R-scsi_tmf_0
512        2          I (idle)                  kworker/R-mmc_complete
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
520        2          I (idle)                  kworker/R-nvme-auth-wq
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
7          2          I (idle)                  kworker/R-slub_flushwq
8          2          I (idle)                  kworker/R-netns
935        2          I (idle)                  kworker/R-kmemstick
sergey@uchuwi:~$ ./get_proc2.sh | grep -P 'runing'
sergey@uchuwi:~$ ./get_proc2.sh | grep -P 'zombi'
sergey@uchuwi:~$ ./get_proc2.sh | grep -P '^sleeping'
sergey@uchuwi:~$ ./get_proc2.sh | grep -P '!sleeping'
sergey@uchuwi:~$ ./get_proc2.sh | grep -v 'sleeping'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
1010       2          I (idle)                  kworker/R-cfg80211
106        2          I (idle)                  kworker/1:0H-kblockd
112        2          I (idle)                  kworker/3:0H-kblockd
118        2          I (idle)                  kworker/5:0H-mmc_complete
124        2          I (idle)                  kworker/7:0H-mmc_complete
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
1321       2          I (idle)                  kworker/R-ttm
136        2          I (idle)                  kworker/11:0H-mmc_complete
138        2          I (idle)                  kworker/R-inet_frag_wq
139        2          I (idle)                  rcu_tasks_kthread
1396       2          I (idle)                  kworker/1:1H-kblockd
140        2          I (idle)                  rcu_tasks_rude_kthread
146        2          I (idle)                  kworker/R-writeback
15         2          I (idle)                  rcu_preempt
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
159        2          I (idle)                  kworker/R-tpm_dev_wq
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
167        2          I (idle)                  kworker/R-quota_events_unbound
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
178        2          I (idle)                  kworker/R-hfi-updates
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
201        2          I (idle)                  kworker/R-charger_manager
27         2          I (idle)                  kworker/2:0H-mmc_complete
33         2          I (idle)                  kworker/4:0H-mmc_complete
39         2          I (idle)                  kworker/6:0H-mmc_complete
4          2          I (idle)                  kworker/R-rcu_gp
45         2          I (idle)                  kworker/8:0H-mmc_complete
5          2          I (idle)                  kworker/R-sync_wq
504        2          I (idle)                  kworker/R-scsi_tmf_0
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
535        2          I (idle)                  kworker/10:1H-kblockd
537        2          I (idle)                  kworker/6:1H-kblockd
539        2          I (idle)                  kworker/14:1H-kblockd
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59633      2          I (idle)                  kworker/18:3-events_freezable
59951      2          I (idle)                  kworker/10:3-events_freezable
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_power_efficient
60172      2          I (idle)                  kworker/16:2-events_freezable
60260      2          I (idle)                  kworker/15:1-events
60263      2          I (idle)                  kworker/4:1-events_freezable
60265      2          I (idle)                  kworker/6:0-events
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events
60321      2          I (idle)                  kworker/5:2
60332      2          I (idle)                  kworker/0:1-events_freezable
60335      2          I (idle)                  kworker/10:2-events
60344      2          I (idle)                  kworker/5:0-events_freezable
60373      2          I (idle)                  kworker/u80:2-events_unbound
60406      2          I (idle)                  kworker/8:0-events_freezable
60407      2          I (idle)                  kworker/9:2-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60593      2          I (idle)                  kworker/3:0
60594      2          I (idle)                  kworker/3:1-events_freezable
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-events_freezable
60607      2          I (idle)                  kworker/7:3-events_freezable
60608      2          I (idle)                  kworker/6:3-events
60613      2          I (idle)                  kworker/12:0-events
60614      2          I (idle)                  kworker/11:3-events_freezable
60616      2          I (idle)                  kworker/0:2-events_freezable
60617      2          I (idle)                  kworker/3:2-events
60618      2          I (idle)                  kworker/13:1-events_freezable
61176      2          I (idle)                  kworker/17:2
61178      2          I (idle)                  kworker/u80:4-events_power_efficient
61181      2          I (idle)                  kworker/7:2-events
61182      2          I (idle)                  kworker/4:3-events_freezable
61185      2          I (idle)                  kworker/2:2-events_freezable
61186      2          I (idle)                  kworker/1:1-mm_percpu_wq
61187      2          I (idle)                  kworker/5:3-events
61188      2          I (idle)                  kworker/12:1-events
61195      2          I (idle)                  kworker/12:2-events_freezable
61206      2          I (idle)                  kworker/11:1-events_freezable
61221      2          I (idle)                  kworker/0:0-events_freezable
61227      2          I (idle)                  kworker/10:1-events
61256      2          I (idle)                  kworker/15:2-events_freezable
61257      2          I (idle)                  kworker/13:2-events
61258      2          I (idle)                  kworker/8:1-events_freezable
61259      2          I (idle)                  kworker/18:1-events
61261      2          I (idle)                  kworker/19:3
61262      2          I (idle)                  kworker/4:0-events_freezable
61265      2          I (idle)                  kworker/6:2-events_freezable
64         2          I (idle)                  kworker/13:0H-mmc_complete
66101      2          I (idle)                  kworker/7:1
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
70949      2          I (idle)                  kworker/2:1-events_freezable
70950      2          I (idle)                  kworker/9:0-events_freezable
70951      2          I (idle)                  kworker/1:0
70952      2          I (idle)                  kworker/15:3-events
70955      2          I (idle)                  kworker/14:0
75232      2          I (idle)                  kworker/u80:0-events_unbound
76         2          I (idle)                  kworker/15:0H-mmc_complete
8          2          I (idle)                  kworker/R-netns
80735      2          I (idle)                  kworker/5:1
80736      2          I (idle)                  kworker/3:3-events_freezable
82         2          I (idle)                  kworker/16:0H-mmc_complete
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85632      2          I (idle)                  kworker/0:3-events_freezable
88         2          I (idle)                  kworker/17:0H-mmc_complete
90516      2          I (idle)                  kworker/17:1
90517      2          I (idle)                  kworker/12:3-events
915        2          I (idle)                  kworker/9:1H-kblockd
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95425      2          I (idle)                  kworker/10:0
95426      2          I (idle)                  kworker/11:2-events
95427      2          I (idle)                  kworker/8:2-events
95428      2          I (idle)                  kworker/13:0
95429      2          I (idle)                  kworker/13:3-events_freezable
95430      2          I (idle)                  kworker/18:0
95431      2          I (idle)                  kworker/18:2
95433      2          I (idle)                  kworker/6:1-events_freezable
95434      2          I (idle)                  kworker/4:2-mm_percpu_wq
95435      2          I (idle)                  kworker/2:3-events
95436      2          I (idle)                  kworker/9:3-mm_percpu_wq
970        2          I (idle)                  kworker/5:1H-kblockd
sergey@uchuwi:~$ ./get_proc2.sh | grep -v '(sleeping|idle)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
1          0          S (sleeping)              systemd
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
100297     2          I (idle)                  kworker/7:0
100298     1          S (sleeping)              nm-dispatcher
100312     60981      S (sleeping)              get_proc2.sh
100313     60981      S (sleeping)              grep
101        2          S (sleeping)              cpuhp/1
1010       2          I (idle)                  kworker/R-cfg80211
102        2          S (sleeping)              idle_inject/1
1029       2          S (sleeping)              irq/162-mei_me
103        2          S (sleeping)              migration/1
104        2          S (sleeping)              ksoftirqd/1
106        2          I (idle)                  kworker/1:0H-kblockd
107        2          S (sleeping)              cpuhp/3
108        2          S (sleeping)              idle_inject/3
109        2          S (sleeping)              migration/3
1092       2          S (sleeping)              irq/163-iwlwifi:default_queue
1093       2          S (sleeping)              irq/164-iwlwifi:queue_1
1094       2          S (sleeping)              irq/165-iwlwifi:queue_2
1095       2          S (sleeping)              irq/166-iwlwifi:queue_3
1096       2          S (sleeping)              irq/167-iwlwifi:queue_4
1097       2          S (sleeping)              irq/168-iwlwifi:queue_5
1098       2          S (sleeping)              irq/169-iwlwifi:queue_6
1099       2          S (sleeping)              irq/170-iwlwifi:queue_7
110        2          S (sleeping)              ksoftirqd/3
1100       2          S (sleeping)              irq/171-iwlwifi:queue_8
1101       2          S (sleeping)              irq/172-iwlwifi:queue_9
1103       2          S (sleeping)              irq/173-iwlwifi:queue_10
1104       2          S (sleeping)              irq/174-iwlwifi:queue_11
1105       2          S (sleeping)              irq/175-iwlwifi:queue_12
1106       2          S (sleeping)              irq/176-iwlwifi:queue_13
1107       2          S (sleeping)              irq/177-iwlwifi:queue_14
1108       2          S (sleeping)              irq/178-iwlwifi:exception
112        2          I (idle)                  kworker/3:0H-kblockd
113        2          S (sleeping)              cpuhp/5
114        2          S (sleeping)              idle_inject/5
115        2          S (sleeping)              migration/5
116        2          S (sleeping)              ksoftirqd/5
118        2          I (idle)                  kworker/5:0H-mmc_complete
119        2          S (sleeping)              cpuhp/7
120        2          S (sleeping)              idle_inject/7
121        2          S (sleeping)              migration/7
122        2          S (sleeping)              ksoftirqd/7
124        2          I (idle)                  kworker/7:0H-mmc_complete
125        2          S (sleeping)              cpuhp/9
126        2          S (sleeping)              idle_inject/9
127        2          S (sleeping)              migration/9
128        2          S (sleeping)              ksoftirqd/9
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
131        2          S (sleeping)              cpuhp/11
132        2          S (sleeping)              idle_inject/11
1320       2          S (sleeping)              irq/16-processor_thermal_device_pci
1321       2          I (idle)                  kworker/R-ttm
1328       2          S (sleeping)              card1-crtc0
1329       2          S (sleeping)              card1-crtc1
133        2          S (sleeping)              migration/11
1330       2          S (sleeping)              card1-crtc2
1331       2          S (sleeping)              card1-crtc3
134        2          S (sleeping)              ksoftirqd/11
136        2          I (idle)                  kworker/11:0H-mmc_complete
137        2          S (sleeping)              kdevtmpfs
138        2          I (idle)                  kworker/R-inet_frag_wq
139        2          I (idle)                  rcu_tasks_kthread
1396       2          I (idle)                  kworker/1:1H-kblockd
14         2          S (sleeping)              ksoftirqd/0
140        2          I (idle)                  rcu_tasks_rude_kthread
141        2          S (sleeping)              kauditd
142        2          S (sleeping)              khungtaskd
143        2          S (sleeping)              oom_reaper
146        2          I (idle)                  kworker/R-writeback
147        2          S (sleeping)              kcompactd0
148        2          S (sleeping)              ksmd
149        2          S (sleeping)              khugepaged
15         2          I (idle)                  rcu_preempt
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
154        2          S (sleeping)              irq/9-acpi
159        2          I (idle)                  kworker/R-tpm_dev_wq
16         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/1
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
166        2          S (sleeping)              watchdogd
167        2          I (idle)                  kworker/R-quota_events_unbound
168        2          S (sleeping)              kswapd0
169        2          S (sleeping)              ecryptfs-kthread
17         2          S (sleeping)              rcu_exp_gp_kthread_worker
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
174        2          S (sleeping)              hwrng
178        2          I (idle)                  kworker/R-hfi-updates
18         2          S (sleeping)              migration/0
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
1833       1          S (sleeping)              avahi-daemon
1834       1          S (sleeping)              bluetoothd
1836       1          S (sleeping)              chronyd-starter
1837       1          S (sleeping)              dbus-daemon
1842       1          S (sleeping)              gnome-remote-de
1847       1          S (sleeping)              networkd-dispat
1850       1          S (sleeping)              polkitd
1864       1          S (sleeping)              accounts-daemon
1867       1          S (sleeping)              switcheroo-cont
1874       1          S (sleeping)              systemd-logind
1879       1          S (sleeping)              thermald
1881       1          S (sleeping)              udisksd
1886       1          S (sleeping)              virtlockd
1898       1          S (sleeping)              virtlogd
19         2          S (sleeping)              kprobe-optimizer
1931       1833       S (sleeping)              avahi-daemon
1963       1836       S (sleeping)              chronyd
1966       1963       S (sleeping)              chronyd
1973       1          S (sleeping)              rsyslogd
1980       1          S (sleeping)              NetworkManager
1986       1          S (sleeping)              wpa_supplicant
2          0          S (sleeping)              kthreadd
20         2          S (sleeping)              idle_inject/0
201        2          I (idle)                  kworker/R-charger_manager
2045       1          S (sleeping)              ModemManager
2057       1          S (sleeping)              upowerd
2072       1          S (sleeping)              AmneziaVPN-serv
21         2          S (sleeping)              cpuhp/0
2102       1          S (sleeping)              canonical-livep
2108       1          S (sleeping)              run-cups-browse
2109       1          S (sleeping)              run-cupsd
2111       1          S (sleeping)              syncthing
2112       1          S (sleeping)              unattended-upgr
2113       2072       S (sleeping)              AmneziaVPN-serv
2154       1          S (sleeping)              colord
2165       2111       S (sleeping)              syncthing
22         2          S (sleeping)              cpuhp/2
23         2          S (sleeping)              idle_inject/2
24         2          S (sleeping)              migration/2
25         2          S (sleeping)              ksoftirqd/2
27         2          I (idle)                  kworker/2:0H-mmc_complete
28         2          S (sleeping)              cpuhp/4
2894       2109       S (sleeping)              cupsd
2895       2109       S (sleeping)              cups-proxyd
2898       2108       S (sleeping)              run-cups-browse
29         2          S (sleeping)              idle_inject/4
2965       1          S (sleeping)              cron
2968       1          S (sleeping)              libvirtd
3          2          S (sleeping)              pool_workqueue_release
30         2          S (sleeping)              migration/4
3018       1          S (sleeping)              sabycenter
3020       3018       S (sleeping)              sabycenter
3066       1          S (sleeping)              gdm3
31         2          S (sleeping)              ksoftirqd/4
3207       3066       S (sleeping)              gdm-session-wor
32351      1          S (sleeping)              sshd
3238       1          S (sleeping)              smbd
33         2          I (idle)                  kworker/4:0H-mmc_complete
3352       1          S (sleeping)              systemd
3385       3238       S (sleeping)              smbd-notifyd
3386       3238       S (sleeping)              smbd-cleanupd
34         2          S (sleeping)              cpuhp/6
3471       3352       S (sleeping)              (sd-pam)
35         2          S (sleeping)              idle_inject/6
36         2          S (sleeping)              migration/6
3672       1          S (sleeping)              dnsmasq
3673       3672       S (sleeping)              dnsmasq
37         2          S (sleeping)              ksoftirqd/6
3721       3352       S (sleeping)              dbus-daemon
3722       3352       S (sleeping)              pipewire
3724       3207       S (sleeping)              gdm-wayland-ses
3778       3724       S (sleeping)              gnome-session-i
3779       3352       S (sleeping)              mpris-proxy
3780       3352       S (sleeping)              wireplumber
3781       3352       S (sleeping)              pipewire
3782       1          S (sleeping)              rtkit-daemon
3783       3352       S (sleeping)              pipewire-pulse
3796       3020       S (sleeping)              sabycenter
3821       3352       S (sleeping)              gcr-ssh-agent
3822       3352       S (sleeping)              gnome-keyring-d
3823       3352       S (sleeping)              gnome-session-c
3824       3352       S (sleeping)              ssh-agent
39         2          I (idle)                  kworker/6:0H-mmc_complete
3914       3352       S (sleeping)              xdg-document-po
3918       3352       S (sleeping)              xdg-permission-
3926       3914       S (sleeping)              fusermount3
3956       2          S (sleeping)              krfcommd
3969       3352       S (sleeping)              gnome-session-s
3990       3352       S (sleeping)              gnome-shell
4          2          I (idle)                  kworker/R-rcu_gp
40         2          S (sleeping)              cpuhp/8
4034       3352       S (sleeping)              at-spi-bus-laun
4041       4034       S (sleeping)              dbus-daemon
4043       3352       S (sleeping)              at-spi2-registr
4080       3352       S (sleeping)              gjs
41         2          S (sleeping)              idle_inject/8
4101       3352       S (sleeping)              ibus-daemon
4104       3352       S (sleeping)              gsd-a11y-settin
4113       3352       S (sleeping)              gsd-keyboard
4114       3352       S (sleeping)              gsd-media-keys
4116       3352       S (sleeping)              gsd-power
4120       3352       S (sleeping)              gsd-rfkill
4122       3352       S (sleeping)              gsd-sharing
4123       3352       S (sleeping)              gsd-smartcard
4125       3352       S (sleeping)              gsd-usb-protect
4165       3352       S (sleeping)              gjs
42         2          S (sleeping)              migration/8
4251       4101       S (sleeping)              ibus-memconf
4257       3352       S (sleeping)              ibus-portal
43         2          S (sleeping)              ksoftirqd/8
44110      1          S (sleeping)              cupsd
44112      44110      S (sleeping)              dbus
44113      1          S (sleeping)              cups-browsed
45         2          I (idle)                  kworker/8:0H-mmc_complete
45056      1          S (sleeping)              snapd
46         2          S (sleeping)              cpuhp/10
47         2          S (sleeping)              idle_inject/10
48         2          S (sleeping)              migration/10
48388      1          S (sleeping)              systemd-journal
48559      1          S (sleeping)              systemd-udevd
48578      2          S (sleeping)              psimon
48922      1          S (sleeping)              systemd-machine
49         2          S (sleeping)              ksoftirqd/10
49081      1          S (sleeping)              systemd-oomd
49402      1          S (sleeping)              systemd-resolve
49556      2          S (sleeping)              psimon
5          2          I (idle)                  kworker/R-sync_wq
503        2          S (sleeping)              scsi_eh_0
504        2          I (idle)                  kworker/R-scsi_tmf_0
505        2          S (sleeping)              irq/140-SYNA3602:00
5051       4101       S (sleeping)              ibus-engine-sim
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
52         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/2
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
53         2          S (sleeping)              cpuhp/12
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
534        2          S (sleeping)              spi0
5348       3990       S (sleeping)              Xwayland
535        2          I (idle)                  kworker/10:1H-kblockd
5357       3352       S (sleeping)              gsd-xsettings
5362       3990       S (sleeping)              mutter-x11-fram
537        2          I (idle)                  kworker/6:1H-kblockd
5381       3352       S (sleeping)              ibus-x11
539        2          I (idle)                  kworker/14:1H-kblockd
54         2          S (sleeping)              idle_inject/12
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
5457       3352       S (sleeping)              xdg-desktop-por
55         2          S (sleeping)              migration/12
5530       1          S (sleeping)              power-profiles-
5532       3352       S (sleeping)              xdg-desktop-por
5567       3352       S (sleeping)              xdg-desktop-por
56         2          S (sleeping)              ksoftirqd/12
568        2          S (sleeping)              jbd2/nvme0n1p5-8
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59         2          S (sleeping)              cpuhp/13
59633      2          I (idle)                  kworker/18:3-events_freezable
59951      2          I (idle)                  kworker/10:3-events_freezable
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
60         2          S (sleeping)              idle_inject/13
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_power_efficient
60172      2          I (idle)                  kworker/16:2-events_freezable
60250      2898       S (sleeping)              sleep
60260      2          I (idle)                  kworker/15:1-events
60263      2          I (idle)                  kworker/4:1-events_freezable
60265      2          I (idle)                  kworker/6:0-events
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events
60332      2          I (idle)                  kworker/0:1-events_freezable
60335      2          I (idle)                  kworker/10:2-events
60344      2          I (idle)                  kworker/5:0-events_freezable
60373      2          I (idle)                  kworker/u80:2-events_unbound
60406      2          I (idle)                  kworker/8:0-events_freezable
60407      2          I (idle)                  kworker/9:2-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60593      2          I (idle)                  kworker/3:0
60594      2          I (idle)                  kworker/3:1-events_freezable
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-events_freezable
60607      2          I (idle)                  kworker/7:3-events
60608      2          I (idle)                  kworker/6:3-events_freezable
60613      2          I (idle)                  kworker/12:0-events
60614      2          I (idle)                  kworker/11:3-events_freezable
60616      2          I (idle)                  kworker/0:2-events_freezable
60617      2          I (idle)                  kworker/3:2-mm_percpu_wq
60618      2          I (idle)                  kworker/13:1-events_freezable
60621      32351      S (sleeping)              sshd-session
60627      1          S (sleeping)              systemd
60629      60627      S (sleeping)              (sd-pam)
60650      60627      S (sleeping)              dbus-daemon
60651      60627      S (sleeping)              pipewire
60655      60627      S (sleeping)              user-session-he
60664      60627      S (sleeping)              mpris-proxy
60675      60627      S (sleeping)              wireplumber
60676      60627      S (sleeping)              pipewire
60678      60627      S (sleeping)              pipewire-pulse
60778      60627      S (sleeping)              xdg-document-po
60787      60627      S (sleeping)              xdg-permission-
60794      60778      S (sleeping)              fusermount3
60964      60621      S (sleeping)              sshd-session
60981      60964      S (sleeping)              bash
61         2          S (sleeping)              migration/13
61176      2          I (idle)                  kworker/17:2
61178      2          I (idle)                  kworker/u80:4-events_power_efficient
61181      2          I (idle)                  kworker/7:2-events
61182      2          I (idle)                  kworker/4:3-events_freezable
61185      2          I (idle)                  kworker/2:2-events_freezable
61186      2          I (idle)                  kworker/1:1-events
61187      2          I (idle)                  kworker/5:3-mm_percpu_wq
61188      2          I (idle)                  kworker/12:1-events
61195      2          I (idle)                  kworker/12:2-events_freezable
61206      2          I (idle)                  kworker/11:1-events_freezable
61221      2          I (idle)                  kworker/0:0-events_freezable
61227      2          I (idle)                  kworker/10:1-mm_percpu_wq
61256      2          I (idle)                  kworker/15:2-events_freezable
61257      2          I (idle)                  kworker/13:2-mm_percpu_wq
61258      2          I (idle)                  kworker/8:1-events
61259      2          I (idle)                  kworker/18:1-events
61261      2          I (idle)                  kworker/19:3
61262      2          I (idle)                  kworker/4:0-events_freezable
61265      2          I (idle)                  kworker/6:2-events_freezable
62         2          S (sleeping)              ksoftirqd/13
64         2          I (idle)                  kworker/13:0H-mmc_complete
65         2          S (sleeping)              cpuhp/14
66         2          S (sleeping)              idle_inject/14
66101      2          I (idle)                  kworker/7:1
67         2          S (sleeping)              migration/14
68         2          S (sleeping)              ksoftirqd/14
6999       1          S (sleeping)              fwupd
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
70949      2          I (idle)                  kworker/2:1-events_freezable
70950      2          I (idle)                  kworker/9:0-events_freezable
70951      2          I (idle)                  kworker/1:0
70952      2          I (idle)                  kworker/15:3-events
70955      2          I (idle)                  kworker/14:0
71         2          S (sleeping)              cpuhp/15
72         2          S (sleeping)              idle_inject/15
73         2          S (sleeping)              migration/15
74         2          S (sleeping)              ksoftirqd/15
75232      2          I (idle)                  kworker/u80:0-events_unbound
76         2          I (idle)                  kworker/15:0H-mmc_complete
77         2          S (sleeping)              cpuhp/16
78         2          S (sleeping)              idle_inject/16
79         2          S (sleeping)              migration/16
8          2          I (idle)                  kworker/R-netns
80         2          S (sleeping)              ksoftirqd/16
80735      2          I (idle)                  kworker/5:1
80736      2          I (idle)                  kworker/3:3-events_freezable
82         2          I (idle)                  kworker/16:0H-mmc_complete
83         2          S (sleeping)              cpuhp/17
84         2          S (sleeping)              idle_inject/17
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85         2          S (sleeping)              migration/17
85632      2          I (idle)                  kworker/0:3-events
86         2          S (sleeping)              ksoftirqd/17
88         2          I (idle)                  kworker/17:0H-mmc_complete
89         2          S (sleeping)              cpuhp/18
90         2          S (sleeping)              idle_inject/18
90516      2          I (idle)                  kworker/17:1
90517      2          I (idle)                  kworker/12:3-events
91         2          S (sleeping)              migration/18
915        2          I (idle)                  kworker/9:1H-kblockd
92         2          S (sleeping)              ksoftirqd/18
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95         2          S (sleeping)              cpuhp/19
95425      2          I (idle)                  kworker/10:0
95426      2          I (idle)                  kworker/11:2-events
95427      2          I (idle)                  kworker/8:2-events
95428      2          I (idle)                  kworker/13:0
95429      2          I (idle)                  kworker/13:3-events_freezable
95430      2          I (idle)                  kworker/18:0
95431      2          I (idle)                  kworker/18:2
95433      2          I (idle)                  kworker/6:1-events
95434      2          I (idle)                  kworker/4:2-events
95435      2          I (idle)                  kworker/2:3-events
95436      2          I (idle)                  kworker/9:3-mm_percpu_wq
96         2          S (sleeping)              idle_inject/19
97         2          S (sleeping)              migration/19
970        2          I (idle)                  kworker/5:1H-kblockd
98         2          S (sleeping)              ksoftirqd/19
sergey@uchuwi:~$ ./get_proc2.sh | grep -V '(sleeping|idle)'
grep (GNU grep) 3.12
Copyright (C) 2025 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Авторы программы: Mike Haertel и другие; смотрите
<https://git.savannah.gnu.org/cgit/grep.git/tree/AUTHORS>.

grep -P использует PCRE2 10.46 2025-08-27
sergey@uchuwi:~$ ./get_proc2.sh | grep -v '(sleeping|idle)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
1          0          S (sleeping)              systemd
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
100297     2          I (idle)                  kworker/7:0
101        2          S (sleeping)              cpuhp/1
1010       2          I (idle)                  kworker/R-cfg80211
102        2          S (sleeping)              idle_inject/1
1029       2          S (sleeping)              irq/162-mei_me
103        2          S (sleeping)              migration/1
104        2          S (sleeping)              ksoftirqd/1
105211     60981      S (sleeping)              get_proc2.sh
105212     60981      S (sleeping)              grep
106        2          I (idle)                  kworker/1:0H-kblockd
107        2          S (sleeping)              cpuhp/3
108        2          S (sleeping)              idle_inject/3
109        2          S (sleeping)              migration/3
1092       2          S (sleeping)              irq/163-iwlwifi:default_queue
1093       2          S (sleeping)              irq/164-iwlwifi:queue_1
1094       2          S (sleeping)              irq/165-iwlwifi:queue_2
1095       2          S (sleeping)              irq/166-iwlwifi:queue_3
1096       2          S (sleeping)              irq/167-iwlwifi:queue_4
1097       2          S (sleeping)              irq/168-iwlwifi:queue_5
1098       2          S (sleeping)              irq/169-iwlwifi:queue_6
1099       2          S (sleeping)              irq/170-iwlwifi:queue_7
110        2          S (sleeping)              ksoftirqd/3
1100       2          S (sleeping)              irq/171-iwlwifi:queue_8
1101       2          S (sleeping)              irq/172-iwlwifi:queue_9
1103       2          S (sleeping)              irq/173-iwlwifi:queue_10
1104       2          S (sleeping)              irq/174-iwlwifi:queue_11
1105       2          S (sleeping)              irq/175-iwlwifi:queue_12
1106       2          S (sleeping)              irq/176-iwlwifi:queue_13
1107       2          S (sleeping)              irq/177-iwlwifi:queue_14
1108       2          S (sleeping)              irq/178-iwlwifi:exception
112        2          I (idle)                  kworker/3:0H-kblockd
113        2          S (sleeping)              cpuhp/5
114        2          S (sleeping)              idle_inject/5
115        2          S (sleeping)              migration/5
116        2          S (sleeping)              ksoftirqd/5
118        2          I (idle)                  kworker/5:0H-mmc_complete
119        2          S (sleeping)              cpuhp/7
120        2          S (sleeping)              idle_inject/7
121        2          S (sleeping)              migration/7
122        2          S (sleeping)              ksoftirqd/7
124        2          I (idle)                  kworker/7:0H-mmc_complete
125        2          S (sleeping)              cpuhp/9
126        2          S (sleeping)              idle_inject/9
127        2          S (sleeping)              migration/9
128        2          S (sleeping)              ksoftirqd/9
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
131        2          S (sleeping)              cpuhp/11
132        2          S (sleeping)              idle_inject/11
1320       2          S (sleeping)              irq/16-processor_thermal_device_pci
1321       2          I (idle)                  kworker/R-ttm
1328       2          S (sleeping)              card1-crtc0
1329       2          S (sleeping)              card1-crtc1
133        2          S (sleeping)              migration/11
1330       2          S (sleeping)              card1-crtc2
1331       2          S (sleeping)              card1-crtc3
134        2          S (sleeping)              ksoftirqd/11
136        2          I (idle)                  kworker/11:0H-mmc_complete
137        2          S (sleeping)              kdevtmpfs
138        2          I (idle)                  kworker/R-inet_frag_wq
139        2          I (idle)                  rcu_tasks_kthread
1396       2          I (idle)                  kworker/1:1H-kblockd
14         2          S (sleeping)              ksoftirqd/0
140        2          I (idle)                  rcu_tasks_rude_kthread
141        2          S (sleeping)              kauditd
142        2          S (sleeping)              khungtaskd
143        2          S (sleeping)              oom_reaper
146        2          I (idle)                  kworker/R-writeback
147        2          S (sleeping)              kcompactd0
148        2          S (sleeping)              ksmd
149        2          S (sleeping)              khugepaged
15         2          I (idle)                  rcu_preempt
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
154        2          S (sleeping)              irq/9-acpi
159        2          I (idle)                  kworker/R-tpm_dev_wq
16         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/1
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
166        2          S (sleeping)              watchdogd
167        2          I (idle)                  kworker/R-quota_events_unbound
168        2          S (sleeping)              kswapd0
169        2          S (sleeping)              ecryptfs-kthread
17         2          S (sleeping)              rcu_exp_gp_kthread_worker
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
174        2          S (sleeping)              hwrng
178        2          I (idle)                  kworker/R-hfi-updates
18         2          S (sleeping)              migration/0
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
1833       1          S (sleeping)              avahi-daemon
1834       1          S (sleeping)              bluetoothd
1836       1          S (sleeping)              chronyd-starter
1837       1          S (sleeping)              dbus-daemon
1842       1          S (sleeping)              gnome-remote-de
1847       1          S (sleeping)              networkd-dispat
1850       1          S (sleeping)              polkitd
1864       1          S (sleeping)              accounts-daemon
1867       1          S (sleeping)              switcheroo-cont
1874       1          S (sleeping)              systemd-logind
1879       1          S (sleeping)              thermald
1881       1          S (sleeping)              udisksd
1886       1          S (sleeping)              virtlockd
1898       1          S (sleeping)              virtlogd
19         2          S (sleeping)              kprobe-optimizer
1931       1833       S (sleeping)              avahi-daemon
1963       1836       S (sleeping)              chronyd
1966       1963       S (sleeping)              chronyd
1973       1          S (sleeping)              rsyslogd
1980       1          S (sleeping)              NetworkManager
1986       1          S (sleeping)              wpa_supplicant
2          0          S (sleeping)              kthreadd
20         2          S (sleeping)              idle_inject/0
201        2          I (idle)                  kworker/R-charger_manager
2045       1          S (sleeping)              ModemManager
2057       1          S (sleeping)              upowerd
2072       1          S (sleeping)              AmneziaVPN-serv
21         2          S (sleeping)              cpuhp/0
2102       1          S (sleeping)              canonical-livep
2108       1          S (sleeping)              run-cups-browse
2109       1          S (sleeping)              run-cupsd
2111       1          S (sleeping)              syncthing
2112       1          S (sleeping)              unattended-upgr
2113       2072       S (sleeping)              AmneziaVPN-serv
2154       1          S (sleeping)              colord
2165       2111       S (sleeping)              syncthing
22         2          S (sleeping)              cpuhp/2
23         2          S (sleeping)              idle_inject/2
24         2          S (sleeping)              migration/2
25         2          S (sleeping)              ksoftirqd/2
27         2          I (idle)                  kworker/2:0H-mmc_complete
28         2          S (sleeping)              cpuhp/4
2894       2109       S (sleeping)              cupsd
2895       2109       S (sleeping)              cups-proxyd
2898       2108       S (sleeping)              run-cups-browse
29         2          S (sleeping)              idle_inject/4
2965       1          S (sleeping)              cron
2968       1          S (sleeping)              libvirtd
3          2          S (sleeping)              pool_workqueue_release
30         2          S (sleeping)              migration/4
3018       1          S (sleeping)              sabycenter
3020       3018       S (sleeping)              sabycenter
3066       1          S (sleeping)              gdm3
31         2          S (sleeping)              ksoftirqd/4
3207       3066       S (sleeping)              gdm-session-wor
32351      1          S (sleeping)              sshd
3238       1          S (sleeping)              smbd
33         2          I (idle)                  kworker/4:0H-mmc_complete
3352       1          S (sleeping)              systemd
3385       3238       S (sleeping)              smbd-notifyd
3386       3238       S (sleeping)              smbd-cleanupd
34         2          S (sleeping)              cpuhp/6
3471       3352       S (sleeping)              (sd-pam)
35         2          S (sleeping)              idle_inject/6
36         2          S (sleeping)              migration/6
3672       1          S (sleeping)              dnsmasq
3673       3672       S (sleeping)              dnsmasq
37         2          S (sleeping)              ksoftirqd/6
3721       3352       S (sleeping)              dbus-daemon
3722       3352       S (sleeping)              pipewire
3724       3207       S (sleeping)              gdm-wayland-ses
3778       3724       S (sleeping)              gnome-session-i
3779       3352       S (sleeping)              mpris-proxy
3780       3352       S (sleeping)              wireplumber
3781       3352       S (sleeping)              pipewire
3782       1          S (sleeping)              rtkit-daemon
3783       3352       S (sleeping)              pipewire-pulse
3796       3020       S (sleeping)              sabycenter
3821       3352       S (sleeping)              gcr-ssh-agent
3822       3352       S (sleeping)              gnome-keyring-d
3823       3352       S (sleeping)              gnome-session-c
3824       3352       S (sleeping)              ssh-agent
39         2          I (idle)                  kworker/6:0H-mmc_complete
3914       3352       S (sleeping)              xdg-document-po
3918       3352       S (sleeping)              xdg-permission-
3926       3914       S (sleeping)              fusermount3
3956       2          S (sleeping)              krfcommd
3969       3352       S (sleeping)              gnome-session-s
3990       3352       S (sleeping)              gnome-shell
4          2          I (idle)                  kworker/R-rcu_gp
40         2          S (sleeping)              cpuhp/8
4034       3352       S (sleeping)              at-spi-bus-laun
4041       4034       S (sleeping)              dbus-daemon
4043       3352       S (sleeping)              at-spi2-registr
4080       3352       S (sleeping)              gjs
41         2          S (sleeping)              idle_inject/8
4101       3352       S (sleeping)              ibus-daemon
4104       3352       S (sleeping)              gsd-a11y-settin
4113       3352       S (sleeping)              gsd-keyboard
4114       3352       S (sleeping)              gsd-media-keys
4116       3352       S (sleeping)              gsd-power
4120       3352       S (sleeping)              gsd-rfkill
4122       3352       S (sleeping)              gsd-sharing
4123       3352       S (sleeping)              gsd-smartcard
4125       3352       S (sleeping)              gsd-usb-protect
4165       3352       S (sleeping)              gjs
42         2          S (sleeping)              migration/8
4251       4101       S (sleeping)              ibus-memconf
4257       3352       S (sleeping)              ibus-portal
43         2          S (sleeping)              ksoftirqd/8
44110      1          S (sleeping)              cupsd
44112      44110      S (sleeping)              dbus
44113      1          S (sleeping)              cups-browsed
45         2          I (idle)                  kworker/8:0H-mmc_complete
45056      1          S (sleeping)              snapd
46         2          S (sleeping)              cpuhp/10
47         2          S (sleeping)              idle_inject/10
48         2          S (sleeping)              migration/10
48388      1          S (sleeping)              systemd-journal
48559      1          S (sleeping)              systemd-udevd
48578      2          S (sleeping)              psimon
48922      1          S (sleeping)              systemd-machine
49         2          S (sleeping)              ksoftirqd/10
49081      1          S (sleeping)              systemd-oomd
49402      1          S (sleeping)              systemd-resolve
49556      2          S (sleeping)              psimon
5          2          I (idle)                  kworker/R-sync_wq
503        2          S (sleeping)              scsi_eh_0
504        2          I (idle)                  kworker/R-scsi_tmf_0
505        2          S (sleeping)              irq/140-SYNA3602:00
5051       4101       S (sleeping)              ibus-engine-sim
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
52         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/2
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
53         2          S (sleeping)              cpuhp/12
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
534        2          S (sleeping)              spi0
5348       3990       S (sleeping)              Xwayland
535        2          I (idle)                  kworker/10:1H-kblockd
5357       3352       S (sleeping)              gsd-xsettings
5362       3990       S (sleeping)              mutter-x11-fram
537        2          I (idle)                  kworker/6:1H-kblockd
5381       3352       S (sleeping)              ibus-x11
539        2          I (idle)                  kworker/14:1H-kblockd
54         2          S (sleeping)              idle_inject/12
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
5457       3352       S (sleeping)              xdg-desktop-por
55         2          S (sleeping)              migration/12
5530       1          S (sleeping)              power-profiles-
5532       3352       S (sleeping)              xdg-desktop-por
5567       3352       S (sleeping)              xdg-desktop-por
56         2          S (sleeping)              ksoftirqd/12
568        2          S (sleeping)              jbd2/nvme0n1p5-8
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59         2          S (sleeping)              cpuhp/13
59633      2          I (idle)                  kworker/18:3-events_freezable
59951      2          I (idle)                  kworker/10:3-events
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
60         2          S (sleeping)              idle_inject/13
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_power_efficient
60172      2          I (idle)                  kworker/16:2-events_freezable
60250      2898       S (sleeping)              sleep
60260      2          I (idle)                  kworker/15:1-events
60263      2          I (idle)                  kworker/4:1-events
60265      2          I (idle)                  kworker/6:0-events
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events
60332      2          I (idle)                  kworker/0:1-events
60344      2          I (idle)                  kworker/5:0-events_freezable
60373      2          I (idle)                  kworker/u80:2-events_unbound
60406      2          I (idle)                  kworker/8:0-events_freezable
60407      2          I (idle)                  kworker/9:2-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60593      2          I (idle)                  kworker/3:0
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-events_freezable
60607      2          I (idle)                  kworker/7:3-events_freezable
60608      2          I (idle)                  kworker/6:3-events
60613      2          I (idle)                  kworker/12:0-events
60614      2          I (idle)                  kworker/11:3-events_freezable
60617      2          I (idle)                  kworker/3:2-mm_percpu_wq
60618      2          I (idle)                  kworker/13:1-events_freezable
60621      32351      S (sleeping)              sshd-session
60627      1          S (sleeping)              systemd
60629      60627      S (sleeping)              (sd-pam)
60650      60627      S (sleeping)              dbus-daemon
60651      60627      S (sleeping)              pipewire
60655      60627      S (sleeping)              user-session-he
60664      60627      S (sleeping)              mpris-proxy
60675      60627      S (sleeping)              wireplumber
60676      60627      S (sleeping)              pipewire
60678      60627      S (sleeping)              pipewire-pulse
60778      60627      S (sleeping)              xdg-document-po
60787      60627      S (sleeping)              xdg-permission-
60794      60778      S (sleeping)              fusermount3
60964      60621      S (sleeping)              sshd-session
60981      60964      S (sleeping)              bash
61         2          S (sleeping)              migration/13
61178      2          I (idle)                  kworker/u80:4-events_power_efficient
61181      2          I (idle)                  kworker/7:2-events
61182      2          I (idle)                  kworker/4:3-events_freezable
61185      2          I (idle)                  kworker/2:2-events_freezable
61186      2          I (idle)                  kworker/1:1-mm_percpu_wq
61187      2          I (idle)                  kworker/5:3-mm_percpu_wq
61188      2          I (idle)                  kworker/12:1-events_freezable
61206      2          I (idle)                  kworker/11:1-events_freezable
61221      2          I (idle)                  kworker/0:0-events_freezable
61227      2          I (idle)                  kworker/10:1-events_freezable
61256      2          I (idle)                  kworker/15:2-events
61257      2          I (idle)                  kworker/13:2-events
61258      2          I (idle)                  kworker/8:1-events_freezable
61259      2          I (idle)                  kworker/18:1-events
61261      2          I (idle)                  kworker/19:3
61262      2          I (idle)                  kworker/4:0-events_freezable
61265      2          I (idle)                  kworker/6:2-events_freezable
62         2          S (sleeping)              ksoftirqd/13
64         2          I (idle)                  kworker/13:0H-mmc_complete
65         2          S (sleeping)              cpuhp/14
66         2          S (sleeping)              idle_inject/14
66101      2          I (idle)                  kworker/7:1
67         2          S (sleeping)              migration/14
68         2          S (sleeping)              ksoftirqd/14
6999       1          S (sleeping)              fwupd
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
70949      2          I (idle)                  kworker/2:1-events_freezable
70950      2          I (idle)                  kworker/9:0-events_freezable
70951      2          I (idle)                  kworker/1:0
70952      2          I (idle)                  kworker/15:3-events
70955      2          I (idle)                  kworker/14:0
71         2          S (sleeping)              cpuhp/15
72         2          S (sleeping)              idle_inject/15
73         2          S (sleeping)              migration/15
74         2          S (sleeping)              ksoftirqd/15
75232      2          I (idle)                  kworker/u80:0-events_unbound
76         2          I (idle)                  kworker/15:0H-mmc_complete
77         2          S (sleeping)              cpuhp/16
78         2          S (sleeping)              idle_inject/16
79         2          S (sleeping)              migration/16
8          2          I (idle)                  kworker/R-netns
80         2          S (sleeping)              ksoftirqd/16
80735      2          I (idle)                  kworker/5:1
80736      2          I (idle)                  kworker/3:3-events_freezable
82         2          I (idle)                  kworker/16:0H-mmc_complete
83         2          S (sleeping)              cpuhp/17
84         2          S (sleeping)              idle_inject/17
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85         2          S (sleeping)              migration/17
85632      2          I (idle)                  kworker/0:3-events_freezable
86         2          S (sleeping)              ksoftirqd/17
88         2          I (idle)                  kworker/17:0H-mmc_complete
89         2          S (sleeping)              cpuhp/18
90         2          S (sleeping)              idle_inject/18
90517      2          I (idle)                  kworker/12:3-events_freezable
91         2          S (sleeping)              migration/18
915        2          I (idle)                  kworker/9:1H-kblockd
92         2          S (sleeping)              ksoftirqd/18
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95         2          S (sleeping)              cpuhp/19
95425      2          I (idle)                  kworker/10:0
95426      2          I (idle)                  kworker/11:2-events
95427      2          I (idle)                  kworker/8:2-events
95428      2          I (idle)                  kworker/13:0
95429      2          I (idle)                  kworker/13:3-events_freezable
95430      2          I (idle)                  kworker/18:0
95431      2          I (idle)                  kworker/18:2
95433      2          I (idle)                  kworker/6:1-events_freezable
95434      2          I (idle)                  kworker/4:2-events_freezable
95435      2          I (idle)                  kworker/2:3-events
95436      2          I (idle)                  kworker/9:3-events
96         2          S (sleeping)              idle_inject/19
97         2          S (sleeping)              migration/19
970        2          I (idle)                  kworker/5:1H-kblockd
98         2          S (sleeping)              ksoftirqd/19
sergey@uchuwi:~$ ./get_proc2.sh | grep -Pv '(sleeping|idle)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
sergey@uchuwi:~$ ./get_proc2.sh | grep -Pv '(sleeping|kworker)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
139        2          I (idle)                  rcu_tasks_kthread
140        2          I (idle)                  rcu_tasks_rude_kthread
15         2          I (idle)                  rcu_preempt
sergey@uchuwi:~$ ./get_proc2.sh | grep -Pv '(sleeping|rcu)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
100297     2          I (idle)                  kworker/7:0
1010       2          I (idle)                  kworker/R-cfg80211
106        2          I (idle)                  kworker/1:0H-kblockd
107298     2          I (idle)                  kworker/12:2-events
109994     2          I (idle)                  kworker/10:2-events_freezable
109999     2          I (idle)                  kworker/11:1-events
110003     2          I (idle)                  kworker/0:2-events
112        2          I (idle)                  kworker/3:0H-kblockd
114779     2          I (idle)                  kworker/5:1
114780     2          I (idle)                  kworker/5:2
118        2          I (idle)                  kworker/5:0H-mmc_complete
119532     2          I (idle)                  kworker/6:0-events
119533     2          I (idle)                  kworker/8:0-mm_percpu_wq
119534     2          I (idle)                  kworker/4:0-events
119535     2          I (idle)                  kworker/2:2-events
119536     2          I (idle)                  kworker/14:2
119537     2          I (idle)                  kworker/9:0
119538     2          I (idle)                  kworker/7:1
119539     2          I (idle)                  kworker/1:0
124        2          I (idle)                  kworker/7:0H-mmc_complete
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
1321       2          I (idle)                  kworker/R-ttm
136        2          I (idle)                  kworker/11:0H-mmc_complete
138        2          I (idle)                  kworker/R-inet_frag_wq
1396       2          I (idle)                  kworker/1:1H-kblockd
146        2          I (idle)                  kworker/R-writeback
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
159        2          I (idle)                  kworker/R-tpm_dev_wq
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
167        2          I (idle)                  kworker/R-quota_events_unbound
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
178        2          I (idle)                  kworker/R-hfi-updates
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
201        2          I (idle)                  kworker/R-charger_manager
27         2          I (idle)                  kworker/2:0H-mmc_complete
33         2          I (idle)                  kworker/4:0H-mmc_complete
39         2          I (idle)                  kworker/6:0H-mmc_complete
45         2          I (idle)                  kworker/8:0H-mmc_complete
5          2          I (idle)                  kworker/R-sync_wq
504        2          I (idle)                  kworker/R-scsi_tmf_0
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
535        2          I (idle)                  kworker/10:1H-kblockd
537        2          I (idle)                  kworker/6:1H-kblockd
539        2          I (idle)                  kworker/14:1H-kblockd
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59951      2          I (idle)                  kworker/10:3-events_freezable
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_power_efficient
60172      2          I (idle)                  kworker/16:2-events_freezable
60263      2          I (idle)                  kworker/4:1-events_freezable
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events_freezable
60332      2          I (idle)                  kworker/0:1-events_freezable
60344      2          I (idle)                  kworker/5:0-mm_percpu_wq
60373      2          I (idle)                  kworker/u80:2-events_unbound
60407      2          I (idle)                  kworker/9:2-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-events
60607      2          I (idle)                  kworker/7:3-events_freezable
60608      2          I (idle)                  kworker/6:3-events_freezable
60613      2          I (idle)                  kworker/12:0-events
60614      2          I (idle)                  kworker/11:3-events_freezable
60617      2          I (idle)                  kworker/3:2-mm_percpu_wq
61181      2          I (idle)                  kworker/7:2-events
61182      2          I (idle)                  kworker/4:3-events_freezable
61186      2          I (idle)                  kworker/1:1-events_freezable
61187      2          I (idle)                  kworker/5:3-events_freezable
61188      2          I (idle)                  kworker/12:1-events
61221      2          I (idle)                  kworker/0:0-events_freezable
61227      2          I (idle)                  kworker/10:1-events
61256      2          I (idle)                  kworker/15:2-events
61257      2          I (idle)                  kworker/13:2-events_freezable
61258      2          I (idle)                  kworker/8:1-events_freezable
61259      2          I (idle)                  kworker/18:1-events
61261      2          I (idle)                  kworker/19:3
61265      2          I (idle)                  kworker/6:2-events_freezable
64         2          I (idle)                  kworker/13:0H-mmc_complete
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
70949      2          I (idle)                  kworker/2:1-events_freezable
70952      2          I (idle)                  kworker/15:3-events
70955      2          I (idle)                  kworker/14:0-mm_percpu_wq
75232      2          I (idle)                  kworker/u80:0-events_power_efficient
76         2          I (idle)                  kworker/15:0H-mmc_complete
8          2          I (idle)                  kworker/R-netns
80736      2          I (idle)                  kworker/3:3-events_freezable
82         2          I (idle)                  kworker/16:0H-mmc_complete
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85632      2          I (idle)                  kworker/0:3-events_freezable
88         2          I (idle)                  kworker/17:0H-mmc_complete
90517      2          I (idle)                  kworker/12:3-events_freezable
915        2          I (idle)                  kworker/9:1H-kblockd
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95425      2          I (idle)                  kworker/10:0
95426      2          I (idle)                  kworker/11:2-events_freezable
95427      2          I (idle)                  kworker/8:2-events_freezable
95428      2          I (idle)                  kworker/13:0
95429      2          I (idle)                  kworker/13:3-events
95431      2          I (idle)                  kworker/18:2-cgroup_free
95433      2          I (idle)                  kworker/6:1-events_freezable
95434      2          I (idle)                  kworker/4:2-events_freezable
95435      2          I (idle)                  kworker/2:3-events
95436      2          I (idle)                  kworker/9:3-events
970        2          I (idle)                  kworker/5:1H-kblockd
sergey@uchuwi:~$ ./get_proc2.sh | grep -v '(sleeping|idle)'
PID        PPID       СОСТОЯНИЕ        ИМЯ ПРОЦЕССА
--------------------------------------------------------------------------------
1          0          S (sleeping)              systemd
10         2          I (idle)                  kworker/0:0H-mmc_complete
100        2          I (idle)                  kworker/19:0H-kblockd
100297     2          I (idle)                  kworker/7:0
101        2          S (sleeping)              cpuhp/1
1010       2          I (idle)                  kworker/R-cfg80211
102        2          S (sleeping)              idle_inject/1
1029       2          S (sleeping)              irq/162-mei_me
103        2          S (sleeping)              migration/1
104        2          S (sleeping)              ksoftirqd/1
106        2          I (idle)                  kworker/1:0H-kblockd
107        2          S (sleeping)              cpuhp/3
107298     2          I (idle)                  kworker/12:2-mm_percpu_wq
108        2          S (sleeping)              idle_inject/3
109        2          S (sleeping)              migration/3
1092       2          S (sleeping)              irq/163-iwlwifi:default_queue
1093       2          S (sleeping)              irq/164-iwlwifi:queue_1
1094       2          S (sleeping)              irq/165-iwlwifi:queue_2
1095       2          S (sleeping)              irq/166-iwlwifi:queue_3
1096       2          S (sleeping)              irq/167-iwlwifi:queue_4
1097       2          S (sleeping)              irq/168-iwlwifi:queue_5
1098       2          S (sleeping)              irq/169-iwlwifi:queue_6
1099       2          S (sleeping)              irq/170-iwlwifi:queue_7
109994     2          I (idle)                  kworker/10:2-events_freezable
109999     2          I (idle)                  kworker/11:1-events
110        2          S (sleeping)              ksoftirqd/3
1100       2          S (sleeping)              irq/171-iwlwifi:queue_8
110003     2          I (idle)                  kworker/0:2-events
1101       2          S (sleeping)              irq/172-iwlwifi:queue_9
1103       2          S (sleeping)              irq/173-iwlwifi:queue_10
1104       2          S (sleeping)              irq/174-iwlwifi:queue_11
1105       2          S (sleeping)              irq/175-iwlwifi:queue_12
1106       2          S (sleeping)              irq/176-iwlwifi:queue_13
1107       2          S (sleeping)              irq/177-iwlwifi:queue_14
1108       2          S (sleeping)              irq/178-iwlwifi:exception
112        2          I (idle)                  kworker/3:0H-kblockd
113        2          S (sleeping)              cpuhp/5
114        2          S (sleeping)              idle_inject/5
114779     2          I (idle)                  kworker/5:1
114780     2          I (idle)                  kworker/5:2
115        2          S (sleeping)              migration/5
116        2          S (sleeping)              ksoftirqd/5
118        2          I (idle)                  kworker/5:0H-mmc_complete
119        2          S (sleeping)              cpuhp/7
119532     2          I (idle)                  kworker/6:0-events
119533     2          I (idle)                  kworker/8:0-events
119534     2          I (idle)                  kworker/4:0-events_freezable
119535     2          I (idle)                  kworker/2:2-events
119536     2          I (idle)                  kworker/14:2
119537     2          I (idle)                  kworker/9:0
119538     2          I (idle)                  kworker/7:1
119539     2          I (idle)                  kworker/1:0
120        2          S (sleeping)              idle_inject/7
121        2          S (sleeping)              migration/7
122        2          S (sleeping)              ksoftirqd/7
124        2          I (idle)                  kworker/7:0H-mmc_complete
124321     60981      S (sleeping)              get_proc2.sh
124322     60981      S (sleeping)              grep
125        2          S (sleeping)              cpuhp/9
126        2          S (sleeping)              idle_inject/9
127        2          S (sleeping)              migration/9
128        2          S (sleeping)              ksoftirqd/9
1292       2          I (idle)                  kworker/11:1H-kblockd
13         2          I (idle)                  kworker/R-mm_percpu_wq
130        2          I (idle)                  kworker/9:0H-kblockd
131        2          S (sleeping)              cpuhp/11
132        2          S (sleeping)              idle_inject/11
1320       2          S (sleeping)              irq/16-processor_thermal_device_pci
1321       2          I (idle)                  kworker/R-ttm
1328       2          S (sleeping)              card1-crtc0
1329       2          S (sleeping)              card1-crtc1
133        2          S (sleeping)              migration/11
1330       2          S (sleeping)              card1-crtc2
1331       2          S (sleeping)              card1-crtc3
134        2          S (sleeping)              ksoftirqd/11
136        2          I (idle)                  kworker/11:0H-mmc_complete
137        2          S (sleeping)              kdevtmpfs
138        2          I (idle)                  kworker/R-inet_frag_wq
139        2          I (idle)                  rcu_tasks_kthread
1396       2          I (idle)                  kworker/1:1H-kblockd
14         2          S (sleeping)              ksoftirqd/0
140        2          I (idle)                  rcu_tasks_rude_kthread
141        2          S (sleeping)              kauditd
142        2          S (sleeping)              khungtaskd
143        2          S (sleeping)              oom_reaper
146        2          I (idle)                  kworker/R-writeback
147        2          S (sleeping)              kcompactd0
148        2          S (sleeping)              ksmd
149        2          S (sleeping)              khugepaged
15         2          I (idle)                  rcu_preempt
150        2          I (idle)                  kworker/R-kblockd
151        2          I (idle)                  kworker/R-blkcg_punt_bio
152        2          I (idle)                  kworker/R-kintegrityd
154        2          S (sleeping)              irq/9-acpi
159        2          I (idle)                  kworker/R-tpm_dev_wq
16         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/1
160        2          I (idle)                  kworker/R-ata_sff
161        2          I (idle)                  kworker/R-md_bitmap
162        2          I (idle)                  kworker/R-md_llbitmap_io
163        2          I (idle)                  kworker/R-md_llbitmap_unplug
164        2          I (idle)                  kworker/R-edac-poller
165        2          I (idle)                  kworker/R-devfreq_wq
166        2          S (sleeping)              watchdogd
167        2          I (idle)                  kworker/R-quota_events_unbound
168        2          S (sleeping)              kswapd0
169        2          S (sleeping)              ecryptfs-kthread
17         2          S (sleeping)              rcu_exp_gp_kthread_worker
170        2          I (idle)                  kworker/R-kthrotld
171        2          I (idle)                  kworker/R-acpi_thermal_pm
174        2          S (sleeping)              hwrng
178        2          I (idle)                  kworker/R-hfi-updates
18         2          S (sleeping)              migration/0
180        2          I (idle)                  kworker/R-mld
181        2          I (idle)                  kworker/R-ipv6_addrconf
182        2          I (idle)                  kworker/R-kstrp
1833       1          S (sleeping)              avahi-daemon
1834       1          S (sleeping)              bluetoothd
1836       1          S (sleeping)              chronyd-starter
1837       1          S (sleeping)              dbus-daemon
1842       1          S (sleeping)              gnome-remote-de
1847       1          S (sleeping)              networkd-dispat
1850       1          S (sleeping)              polkitd
1864       1          S (sleeping)              accounts-daemon
1867       1          S (sleeping)              switcheroo-cont
1874       1          S (sleeping)              systemd-logind
1879       1          S (sleeping)              thermald
1881       1          S (sleeping)              udisksd
1886       1          S (sleeping)              virtlockd
1898       1          S (sleeping)              virtlogd
19         2          S (sleeping)              kprobe-optimizer
1931       1833       S (sleeping)              avahi-daemon
1963       1836       S (sleeping)              chronyd
1966       1963       S (sleeping)              chronyd
1973       1          S (sleeping)              rsyslogd
1980       1          S (sleeping)              NetworkManager
1986       1          S (sleeping)              wpa_supplicant
2          0          S (sleeping)              kthreadd
20         2          S (sleeping)              idle_inject/0
201        2          I (idle)                  kworker/R-charger_manager
2045       1          S (sleeping)              ModemManager
2057       1          S (sleeping)              upowerd
2072       1          S (sleeping)              AmneziaVPN-serv
21         2          S (sleeping)              cpuhp/0
2102       1          S (sleeping)              canonical-livep
2108       1          S (sleeping)              run-cups-browse
2109       1          S (sleeping)              run-cupsd
2111       1          S (sleeping)              syncthing
2112       1          S (sleeping)              unattended-upgr
2113       2072       S (sleeping)              AmneziaVPN-serv
2154       1          S (sleeping)              colord
2165       2111       S (sleeping)              syncthing
22         2          S (sleeping)              cpuhp/2
23         2          S (sleeping)              idle_inject/2
24         2          S (sleeping)              migration/2
25         2          S (sleeping)              ksoftirqd/2
27         2          I (idle)                  kworker/2:0H-mmc_complete
28         2          S (sleeping)              cpuhp/4
2894       2109       S (sleeping)              cupsd
2895       2109       S (sleeping)              cups-proxyd
2898       2108       S (sleeping)              run-cups-browse
29         2          S (sleeping)              idle_inject/4
2965       1          S (sleeping)              cron
2968       1          S (sleeping)              libvirtd
3          2          S (sleeping)              pool_workqueue_release
30         2          S (sleeping)              migration/4
3018       1          S (sleeping)              sabycenter
3020       3018       S (sleeping)              sabycenter
3066       1          S (sleeping)              gdm3
31         2          S (sleeping)              ksoftirqd/4
3207       3066       S (sleeping)              gdm-session-wor
32351      1          S (sleeping)              sshd
3238       1          S (sleeping)              smbd
33         2          I (idle)                  kworker/4:0H-mmc_complete
3352       1          S (sleeping)              systemd
3385       3238       S (sleeping)              smbd-notifyd
3386       3238       S (sleeping)              smbd-cleanupd
34         2          S (sleeping)              cpuhp/6
3471       3352       S (sleeping)              (sd-pam)
35         2          S (sleeping)              idle_inject/6
36         2          S (sleeping)              migration/6
3672       1          S (sleeping)              dnsmasq
3673       3672       S (sleeping)              dnsmasq
37         2          S (sleeping)              ksoftirqd/6
3721       3352       S (sleeping)              dbus-daemon
3722       3352       S (sleeping)              pipewire
3724       3207       S (sleeping)              gdm-wayland-ses
3778       3724       S (sleeping)              gnome-session-i
3779       3352       S (sleeping)              mpris-proxy
3780       3352       S (sleeping)              wireplumber
3781       3352       S (sleeping)              pipewire
3782       1          S (sleeping)              rtkit-daemon
3783       3352       S (sleeping)              pipewire-pulse
3796       3020       S (sleeping)              sabycenter
3821       3352       S (sleeping)              gcr-ssh-agent
3822       3352       S (sleeping)              gnome-keyring-d
3823       3352       S (sleeping)              gnome-session-c
3824       3352       S (sleeping)              ssh-agent
39         2          I (idle)                  kworker/6:0H-mmc_complete
3914       3352       S (sleeping)              xdg-document-po
3918       3352       S (sleeping)              xdg-permission-
3926       3914       S (sleeping)              fusermount3
3956       2          S (sleeping)              krfcommd
3969       3352       S (sleeping)              gnome-session-s
3990       3352       S (sleeping)              gnome-shell
4          2          I (idle)                  kworker/R-rcu_gp
40         2          S (sleeping)              cpuhp/8
4034       3352       S (sleeping)              at-spi-bus-laun
4041       4034       S (sleeping)              dbus-daemon
4043       3352       S (sleeping)              at-spi2-registr
4080       3352       S (sleeping)              gjs
41         2          S (sleeping)              idle_inject/8
4101       3352       S (sleeping)              ibus-daemon
4104       3352       S (sleeping)              gsd-a11y-settin
4113       3352       S (sleeping)              gsd-keyboard
4114       3352       S (sleeping)              gsd-media-keys
4116       3352       S (sleeping)              gsd-power
4120       3352       S (sleeping)              gsd-rfkill
4122       3352       S (sleeping)              gsd-sharing
4123       3352       S (sleeping)              gsd-smartcard
4125       3352       S (sleeping)              gsd-usb-protect
4165       3352       S (sleeping)              gjs
42         2          S (sleeping)              migration/8
4251       4101       S (sleeping)              ibus-memconf
4257       3352       S (sleeping)              ibus-portal
43         2          S (sleeping)              ksoftirqd/8
44110      1          S (sleeping)              cupsd
44112      44110      S (sleeping)              dbus
44113      1          S (sleeping)              cups-browsed
45         2          I (idle)                  kworker/8:0H-mmc_complete
45056      1          S (sleeping)              snapd
46         2          S (sleeping)              cpuhp/10
47         2          S (sleeping)              idle_inject/10
48         2          S (sleeping)              migration/10
48388      1          S (sleeping)              systemd-journal
48559      1          S (sleeping)              systemd-udevd
48578      2          S (sleeping)              psimon
48922      1          S (sleeping)              systemd-machine
49         2          S (sleeping)              ksoftirqd/10
49081      1          S (sleeping)              systemd-oomd
49402      1          S (sleeping)              systemd-resolve
49556      2          S (sleeping)              psimon
5          2          I (idle)                  kworker/R-sync_wq
503        2          S (sleeping)              scsi_eh_0
504        2          I (idle)                  kworker/R-scsi_tmf_0
505        2          S (sleeping)              irq/140-SYNA3602:00
5051       4101       S (sleeping)              ibus-engine-sim
51         2          I (idle)                  kworker/10:0H-mmc_complete
512        2          I (idle)                  kworker/R-mmc_complete
513        2          I (idle)                  kworker/18:1H-kblockd
515        2          I (idle)                  kworker/17:1H-kblockd
517        2          I (idle)                  kworker/R-nvme-wq
518        2          I (idle)                  kworker/R-nvme-reset-wq
519        2          I (idle)                  kworker/R-nvme-delete-wq
52         2          S (sleeping)              rcu_exp_par_gp_kthread_worker/2
520        2          I (idle)                  kworker/R-nvme-auth-wq
521        2          I (idle)                  kworker/16:1H-kblockd
522        2          I (idle)                  kworker/0:1H-kblockd
523        2          I (idle)                  kworker/2:1H-kblockd
524        2          I (idle)                  kworker/4:1H-kblockd
526        2          I (idle)                  kworker/7:1H-kblockd
528        2          I (idle)                  kworker/8:1H-kblockd
53         2          S (sleeping)              cpuhp/12
530        2          I (idle)                  kworker/12:1H-kblockd
531        2          I (idle)                  kworker/13:1H-kblockd
534        2          S (sleeping)              spi0
5348       3990       S (sleeping)              Xwayland
535        2          I (idle)                  kworker/10:1H-kblockd
5357       3352       S (sleeping)              gsd-xsettings
5362       3990       S (sleeping)              mutter-x11-fram
537        2          I (idle)                  kworker/6:1H-kblockd
5381       3352       S (sleeping)              ibus-x11
539        2          I (idle)                  kworker/14:1H-kblockd
54         2          S (sleeping)              idle_inject/12
540        2          I (idle)                  kworker/15:1H-kblockd
54324      2          I (idle)                  kworker/u81:1-rb_allocator
5457       3352       S (sleeping)              xdg-desktop-por
55         2          S (sleeping)              migration/12
5530       1          S (sleeping)              power-profiles-
5532       3352       S (sleeping)              xdg-desktop-por
5567       3352       S (sleeping)              xdg-desktop-por
56         2          S (sleeping)              ksoftirqd/12
568        2          S (sleeping)              jbd2/nvme0n1p5-8
569        2          I (idle)                  kworker/R-ext4-rsv-conversion
58         2          I (idle)                  kworker/12:0H-mmc_complete
58022      2          I (idle)                  kworker/u81:0-rb_allocator
59         2          S (sleeping)              cpuhp/13
59951      2          I (idle)                  kworker/10:3-events_freezable
6          2          I (idle)                  kworker/R-kvfree_rcu_reclaim
60         2          S (sleeping)              idle_inject/13
60101      2          I (idle)                  kworker/19:1-events
60132      2          I (idle)                  kworker/u80:1-events_power_efficient
60172      2          I (idle)                  kworker/16:2-events_freezable
60250      2898       S (sleeping)              sleep
60263      2          I (idle)                  kworker/4:1-events
60275      2          I (idle)                  kworker/8:3-mm_percpu_wq
60290      2          I (idle)                  kworker/16:1-events
60300      2          I (idle)                  kworker/14:1-events_freezable
60332      2          I (idle)                  kworker/0:1-events_freezable
60344      2          I (idle)                  kworker/5:0-mm_percpu_wq
60373      2          I (idle)                  kworker/u80:2-events_power_efficient
60407      2          I (idle)                  kworker/9:2-events_freezable
60412      2          I (idle)                  kworker/17:3-events
60519      2          I (idle)                  kworker/2:0-events
60564      2          I (idle)                  kworker/11:0-events_freezable
60596      2          I (idle)                  kworker/9:1
60603      2          I (idle)                  kworker/17:0-events_freezable
60604      2          I (idle)                  kworker/1:3-mm_percpu_wq
60607      2          I (idle)                  kworker/7:3-events
60608      2          I (idle)                  kworker/6:3-events_freezable
60613      2          I (idle)                  kworker/12:0-events
60614      2          I (idle)                  kworker/11:3-events_freezable
60617      2          I (idle)                  kworker/3:2-events
60621      32351      S (sleeping)              sshd-session
60627      1          S (sleeping)              systemd
60629      60627      S (sleeping)              (sd-pam)
60650      60627      S (sleeping)              dbus-daemon
60651      60627      S (sleeping)              pipewire
60655      60627      S (sleeping)              user-session-he
60664      60627      S (sleeping)              mpris-proxy
60675      60627      S (sleeping)              wireplumber
60676      60627      S (sleeping)              pipewire
60678      60627      S (sleeping)              pipewire-pulse
60778      60627      S (sleeping)              xdg-document-po
60787      60627      S (sleeping)              xdg-permission-
60794      60778      S (sleeping)              fusermount3
60964      60621      S (sleeping)              sshd-session
60981      60964      S (sleeping)              bash
61         2          S (sleeping)              migration/13
61181      2          I (idle)                  kworker/7:2-events_freezable
61182      2          I (idle)                  kworker/4:3-events_freezable
61186      2          I (idle)                  kworker/1:1-events_freezable
61187      2          I (idle)                  kworker/5:3-events_freezable
61188      2          I (idle)                  kworker/12:1-events
61221      2          I (idle)                  kworker/0:0-events_freezable
61227      2          I (idle)                  kworker/10:1-mm_percpu_wq
61256      2          I (idle)                  kworker/15:2-mm_percpu_wq
61257      2          I (idle)                  kworker/13:2-events_freezable
61258      2          I (idle)                  kworker/8:1-events_freezable
61259      2          I (idle)                  kworker/18:1-events
61261      2          I (idle)                  kworker/19:3
61265      2          I (idle)                  kworker/6:2-events_freezable
62         2          S (sleeping)              ksoftirqd/13
64         2          I (idle)                  kworker/13:0H-mmc_complete
65         2          S (sleeping)              cpuhp/14
66         2          S (sleeping)              idle_inject/14
67         2          S (sleeping)              migration/14
68         2          S (sleeping)              ksoftirqd/14
6999       1          S (sleeping)              fwupd
7          2          I (idle)                  kworker/R-slub_flushwq
70         2          I (idle)                  kworker/14:0H-mmc_complete
70949      2          I (idle)                  kworker/2:1-events_freezable
70952      2          I (idle)                  kworker/15:3-events
70955      2          I (idle)                  kworker/14:0-events
71         2          S (sleeping)              cpuhp/15
72         2          S (sleeping)              idle_inject/15
73         2          S (sleeping)              migration/15
74         2          S (sleeping)              ksoftirqd/15
75232      2          I (idle)                  kworker/u80:0-events_unbound
76         2          I (idle)                  kworker/15:0H-mmc_complete
77         2          S (sleeping)              cpuhp/16
78         2          S (sleeping)              idle_inject/16
79         2          S (sleeping)              migration/16
8          2          I (idle)                  kworker/R-netns
80         2          S (sleeping)              ksoftirqd/16
80736      2          I (idle)                  kworker/3:3-mm_percpu_wq
82         2          I (idle)                  kworker/16:0H-mmc_complete
83         2          S (sleeping)              cpuhp/17
84         2          S (sleeping)              idle_inject/17
845        2          I (idle)                  kworker/3:1H-kblockd
846        2          I (idle)                  kworker/19:1H-kblockd
85         2          S (sleeping)              migration/17
85632      2          I (idle)                  kworker/0:3-events_freezable
86         2          S (sleeping)              ksoftirqd/17
88         2          I (idle)                  kworker/17:0H-mmc_complete
89         2          S (sleeping)              cpuhp/18
90         2          S (sleeping)              idle_inject/18
90517      2          I (idle)                  kworker/12:3-events_freezable
91         2          S (sleeping)              migration/18
915        2          I (idle)                  kworker/9:1H-kblockd
92         2          S (sleeping)              ksoftirqd/18
935        2          I (idle)                  kworker/R-kmemstick
94         2          I (idle)                  kworker/18:0H-mmc_complete
95         2          S (sleeping)              cpuhp/19
95425      2          I (idle)                  kworker/10:0
95426      2          I (idle)                  kworker/11:2-events_freezable
95427      2          I (idle)                  kworker/8:2-events_freezable
95428      2          I (idle)                  kworker/13:0
95429      2          I (idle)                  kworker/13:3-events_freezable
95431      2          I (idle)                  kworker/18:2-cgroup_free
95433      2          I (idle)                  kworker/6:1-events_freezable
95434      2          I (idle)                  kworker/4:2-events_freezable
95435      2          I (idle)                  kworker/2:3-events
95436      2          I (idle)                  kworker/9:3-events
96         2          S (sleeping)              idle_inject/19
97         2          S (sleeping)              migration/19
970        2          I (idle)                  kworker/5:1H-kblockd
98         2          S (sleeping)              ksoftirqd/19
sergey@uchuwi:~$ ./get_proc2.sh | grep -P '90517'
90517      2          I (idle)                  kworker/12:3-events_freezable
sergey@uchuwi:~$ ./get_
get_open_files.sh  get_proc2.sh       get_proc.sh        
sergey@uchuwi:~$ ./get_open_files.sh 
PID        ИМЯ ПРОЦЕССА ПУТЬ К ОТКРЫТОМУ ФАЙЛУ
----------------------------------------------------------------------------------------------------
133897     get_open_files.      /dev/pts/0
133897     get_open_files.      /dev/pts/0
133897     get_open_files.      /dev/pts/0
133897     get_open_files.      /home/sergey/get_open_files.sh
2111       syncthing            /dev/null
2111       syncthing            socket:[29890]
2111       syncthing            anon_inode:[pidfd]
2111       syncthing            socket:[29890]
2111       syncthing            pipe:[17403]
2111       syncthing            anon_inode:[eventpoll]
2111       syncthing            anon_inode:[eventfd]
2111       syncthing            pipe:[17404]
2165       syncthing            /dev/null
2165       syncthing            pipe:[17404]
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/000075.ldb
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/000078.ldb
2165       syncthing            socket:[29029]
2165       syncthing            socket:[26932]
2165       syncthing            socket:[347484]
2165       syncthing            socket:[29924]
2165       syncthing            socket:[29036]
2165       syncthing            socket:[13289]
2165       syncthing            socket:[32957]
2165       syncthing            pipe:[17403]
2165       syncthing            anon_inode:inotify
2165       syncthing            anon_inode:[eventpoll]
2165       syncthing            pipe:[25415]
2165       syncthing            pipe:[25415]
2165       syncthing            socket:[38697]
2165       syncthing            socket:[715811]
2165       syncthing            /home/sergey/.local/state/syncthing/syncthing.lock
2165       syncthing            anon_inode:[eventpoll]
2165       syncthing            anon_inode:[eventfd]
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/LOCK
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/LOG
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/000076.log
2165       syncthing            /home/sergey/.local/state/syncthing/index-v0.14.0.db/MANIFEST-000077
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60627      systemd              [Скрытый или анонимный системный ресурс]
60650      dbus-daemon          /dev/null
60650      dbus-daemon          socket:[712451]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[548792]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[31578]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[712451]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[31580]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[717962]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[489101]
60650      dbus-daemon          socket:[712464]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[eventpoll]
60650      dbus-daemon          socket:[701167]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[701171]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          socket:[713270]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:[pidfd]
60650      dbus-daemon          anon_inode:inotify
60650      dbus-daemon          socket:[713271]
60650      dbus-daemon          socket:[713272]
60650      dbus-daemon          socket:[713274]
60651      pipewire             /dev/null
60651      pipewire             socket:[709954]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             socket:[713290]
60651      pipewire             anon_inode:[eventpoll]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             /run/user/1000/pipewire-0.lock
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             /run/user/1000/pipewire-0-manager.lock
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             socket:[709954]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             socket:[629716]
60651      pipewire             socket:[629716]
60651      pipewire             socket:[629716]
60651      pipewire             socket:[701151]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             socket:[629717]
60651      pipewire             socket:[629717]
60651      pipewire             socket:[489109]
60651      pipewire             socket:[629717]
60651      pipewire             socket:[712460]
60651      pipewire             anon_inode:[timerfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
60651      pipewire             anon_inode:[timerfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
60651      pipewire             anon_inode:[timerfd]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             socket:[489110]
60651      pipewire             /memfd:pipewire-memfd:flags=0x0000000f,type=2,size=2312 (deleted)
60651      pipewire             socket:[712462]
60651      pipewire             anon_inode:[eventpoll]
60651      pipewire             anon_inode:[eventfd]
60651      pipewire             anon_inode:[signalfd]
60651      pipewire             anon_inode:[signalfd]
60651      pipewire             anon_inode:[eventpoll]
60655      user-session-he      /dev/null
60655      user-session-he      socket:[694725]
60655      user-session-he      socket:[694725]
60655      user-session-he      anon_inode:[eventfd]
60655      user-session-he      anon_inode:[eventfd]
60655      user-session-he      socket:[709983]
60655      user-session-he      anon_inode:[eventfd]
60664      mpris-proxy          /dev/null
60664      mpris-proxy          socket:[647314]
60664      mpris-proxy          socket:[647314]
60664      mpris-proxy          anon_inode:[eventfd]
60664      mpris-proxy          socket:[647316]
60664      mpris-proxy          socket:[701138]
60675      wireplumber          /dev/null
60675      wireplumber          socket:[717955]
60675      wireplumber          anon_inode:[eventpoll]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          socket:[707133]
60675      wireplumber          socket:[715976]
60675      wireplumber          socket:[709966]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          socket:[717955]
60675      wireplumber          socket:[715447]
60675      wireplumber          socket:[713291]
60675      wireplumber          anon_inode:inotify
60675      wireplumber          anon_inode:inotify
60675      wireplumber          anon_inode:inotify
60675      wireplumber          socket:[713295]
60675      wireplumber          anon_inode:inotify
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          socket:[707138]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventpoll]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventpoll]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          anon_inode:[eventfd]
60675      wireplumber          socket:[715435]
60676      pipewire             /dev/null
60676      pipewire             socket:[709960]
60676      pipewire             socket:[715975]
60676      pipewire             anon_inode:[eventpoll]
60676      pipewire             anon_inode:[eventfd]
60676      pipewire             anon_inode:[eventfd]
60676      pipewire             socket:[709960]
60676      pipewire             anon_inode:[eventpoll]
60676      pipewire             anon_inode:[eventfd]
60676      pipewire             anon_inode:[signalfd]
60676      pipewire             anon_inode:[signalfd]
60676      pipewire             anon_inode:[eventpoll]
60676      pipewire             anon_inode:[eventfd]
60676      pipewire             anon_inode:[eventfd]
60678      pipewire-pulse       /dev/null
60678      pipewire-pulse       socket:[714467]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       socket:[715440]
60678      pipewire-pulse       anon_inode:[eventpoll]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       anon_inode:[timerfd]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       socket:[715446]
60678      pipewire-pulse       socket:[715446]
60678      pipewire-pulse       socket:[714467]
60678      pipewire-pulse       socket:[715446]
60678      pipewire-pulse       socket:[701157]
60678      pipewire-pulse       socket:[489108]
60678      pipewire-pulse       anon_inode:[eventpoll]
60678      pipewire-pulse       anon_inode:[eventfd]
60678      pipewire-pulse       anon_inode:[signalfd]
60678      pipewire-pulse       anon_inode:[signalfd]
60678      pipewire-pulse       anon_inode:[eventpoll]
60678      pipewire-pulse       anon_inode:[eventfd]
60778      xdg-document-po      /dev/null
60778      xdg-document-po      socket:[694760]
60778      xdg-document-po      pipe:[651913]
60778      xdg-document-po      pipe:[694764]
60778      xdg-document-po      pipe:[694764]
60778      xdg-document-po      socket:[694760]
60778      xdg-document-po      anon_inode:[eventfd]
60778      xdg-document-po      anon_inode:[eventfd]
60778      xdg-document-po      socket:[707142]
60778      xdg-document-po      anon_inode:[eventfd]
60778      xdg-document-po      /dev/fuse
60778      xdg-document-po      socket:[694763]
60778      xdg-document-po      pipe:[651913]
60787      xdg-permission-      /dev/null
60787      xdg-permission-      socket:[714484]
60787      xdg-permission-      socket:[714484]
60787      xdg-permission-      anon_inode:[eventfd]
60787      xdg-permission-      anon_inode:[eventfd]
60787      xdg-permission-      socket:[709967]
60787      xdg-permission-      anon_inode:[eventfd]
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
sergey@uchuwi:~$ ./get_open_files.sh | grep 'bash'
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
60981      bash                 /dev/pts/0
sergey@uchuwi:~$ cat get_open_files.sh 
#!/bin/bash

# Выводим шапку таблицы
printf "%-10s %-20s %s\n" "PID" "ИМЯ ПРОЦЕССА" "ПУТЬ К ОТКРЫТОМУ ФАЙЛУ"
echo "----------------------------------------------------------------------------------------------------"

# Цикл по всем цифровым папкам процессов в /proc
for proc_dir in /proc/[0-9]*/; do
    # Проверяем, что файл status существует и доступен для чтения
    if [ -f "${proc_dir}status" ] && [ -r "${proc_dir}status" ]; then
        
        # Вытаскиваем PID и Имя процесса строго через grep -P
        pid=$(grep -oP '^Pid:\s*\K\d+' "${proc_dir}status")
        name=$(grep -oP '^Name:\s*\K.+' "${proc_dir}status")

        # Проверяем, что у нас есть доступ к папке с дескрипторами файлов
        if [ -d "${proc_dir}fd" ]; then
            # Перебираем все ярлыки (ссылки) открытых файлов
            for fd_link in "${proc_dir}fd/"*; do
                # Проверяем, что ссылка существует
                if [ -L "$fd_link" ]; then
                # readlink превращает виртуальную ссылку в реальный путь к файлу
                        file_path=$(readlink "$fd_link")

                        # ПРОВЕРКА: Если переменная file_path пустая (-z означает "zero/empty")
                        if [ -z "$file_path" ]; then
                            file_path="[Скрытый или анонимный системный ресурс]"
                        fi

                # Выводим данные в таблицу (теперь пустоты не будет)
                printf "%-10s %-20s %s\n" "$pid" "$name" "$file_path"
                fi
            done
        fi
    fi
done
sergey@uchuwi:~$ cat get_proc2.sh 
#!/bin/bash

# Выводим шапку таблицы
printf "%-10s %-10s %-25s %s\n" "PID" "PPID" "СОСТОЯНИЕ" "ИМЯ ПРОЦЕССА"
echo "--------------------------------------------------------------------------------"

# Цикл по всем цифровым папкам в /proc
for proc_dir in /proc/[0-9]*/; do
    if [ -f "${proc_dir}status" ]; then

        # Используем grep -oP и регулярные выражения \K (сбросить совпадение до этой точки)
        pid=$(grep '^Pid:' "${proc_dir}status" | awk '{print $2}')
        ppid=$(grep '^PPid:' "${proc_dir}status" | awk '{print $2}')

        # Вытаскиваем всё, что идет после State: (включая текстовое пояснение в скобках)
        state=$(grep '^State:' "${proc_dir}status" | awk '{print $2, $3}')

        # Вытаскиваем имя процесса
        name=$(grep '^Name:' "${proc_dir}status" | awk '{print $2}')

        # Выводим красивую ровную строчку в таблицу
        printf "%-10s %-10s %-25s %s\n" "$pid" "$ppid" "$state" "$name"
    fi
done

sergey@uchuwi:~$ cat get_proc.sh 
#!/bin/bash

# Выводим шапку таблицы
printf "%-10s %-10s %-25s %s\n" "PID" "PPID" "СОСТОЯНИЕ" "ИМЯ ПРОЦЕССА"
echo "--------------------------------------------------------------------------------"

# Цикл по всем цифровым папкам в /proc
for proc_dir in /proc/[0-9]*/; do
    if [ -f "${proc_dir}status" ]; then
        
        # Используем grep -o (выводит только то что совпало) P и регулярные выражения \K (все что слева от этой точки надо убрать, для красивой колонки) d цифры
        pid=$(grep -oP '^Pid:\s*\K\d+' "${proc_dir}status")
        ppid=$(grep -oP '^PPid:\s*\K\d+' "${proc_dir}status")
        
        # Вытаскиваем всё, что идет после State: (включая текстовое пояснение в скобках)
        state=$(grep -oP '^State:\s*\K.+' "${proc_dir}status")
        
        # Вытаскиваем имя процесса
        name=$(grep -oP '^Name:\s*\K.+' "${proc_dir}status")

        # Выводим красивую ровную строчку в таблицу
        printf "%-10s %-10s %-25s %s\n" "$pid" "$ppid" "$state" "$name"
    fi
done
sergey@uchuwi:~$ 
