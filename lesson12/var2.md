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

