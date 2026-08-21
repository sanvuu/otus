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

