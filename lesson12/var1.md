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

