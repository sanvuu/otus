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

