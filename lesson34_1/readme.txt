sergey@uchuwi:~/otus/lesson34_1$ vagrant provision
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
==> server: Running provisioner: ansible...
    server: Running ansible-playbook...
[WARNING]: Deprecation warnings can be disabled by setting `deprecation_warnings=False` in ansible.cfg.
[DEPRECATION WARNING]: The '--inventory-file' argument is deprecated. This feature will be removed from ansible-core version 2.23. Use -i or --inventory instead.

PLAY [Base setup for all VPN lab nodes] ****************************************

TASK [Gathering Facts] *********************************************************
ok: [server]
[WARNING]: Host 'server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpreter could cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.

TASK [Install OpenVPN, iperf3 and Easy-RSA] ************************************
changed: [server]

PLAY [Configure VPN Server (Task 1 P2P & Task 2 RAS)] **************************

TASK [Gathering Facts] *********************************************************
ok: [server]

TASK [Generate static key for P2P VPN] *****************************************
changed: [server]

TASK [Fetch static.key to local host for distribution to client] ***************
changed: [server]

TASK [Deploy P2P server configuration] *****************************************
changed: [server]

TASK [Ensure P2P OpenVPN service is enabled and started] ***********************
changed: [server]

TASK [Ensure iperf3 daemon is running on server] *******************************
changed: [server]

TASK [Initialize Easy-RSA PKI] *************************************************
changed: [server]

TASK [Build CA (non-interactive)] **********************************************
changed: [server]

TASK [Generate and sign Server certificate] ************************************
changed: [server]

TASK [Generate Diffie-Hellman parameters] **************************************
changed: [server]

TASK [Generate tls-crypt key] **************************************************
changed: [server]

TASK [Generate and sign Client certificate] ************************************
changed: [server]

TASK [Deploy RAS server configuration] *****************************************
changed: [server]

TASK [Ensure RAS OpenVPN service is enabled and started] ***********************
changed: [server]

TASK [Create local bundle directory for host RAS client] ***********************
changed: [server -> localhost]

TASK [Fetch client certificates and keys to host] ******************************
changed: [server] => (item=/etc/openvpn/server/pki/ca.crt)
changed: [server] => (item=/etc/openvpn/server/pki/issued/client.crt)
changed: [server] => (item=/etc/openvpn/server/pki/private/client.key)
changed: [server] => (item=/etc/openvpn/server/ta.key)

TASK [Generate client.conf in local bundle directory] **************************
changed: [server -> localhost]

RUNNING HANDLER [Restart P2P Server] *******************************************
changed: [server]

RUNNING HANDLER [Restart RAS Server] *******************************************
changed: [server]

PLAY [Configure VPN Client (Task 1 P2P)] ***************************************
skipping: no hosts matched

PLAY RECAP *********************************************************************
server                     : ok=21   changed=19   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

==> client: Running provisioner: ansible...
    client: Running ansible-playbook...
[WARNING]: Deprecation warnings can be disabled by setting `deprecation_warnings=False` in ansible.cfg.
[DEPRECATION WARNING]: The '--inventory-file' argument is deprecated. This feature will be removed from ansible-core version 2.23. Use -i or --inventory instead.

PLAY [Base setup for all VPN lab nodes] ****************************************

TASK [Gathering Facts] *********************************************************
ok: [client]
[WARNING]: Host 'client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpreter could cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.

TASK [Install OpenVPN, iperf3 and Easy-RSA] ************************************
changed: [client]

PLAY [Configure VPN Server (Task 1 P2P & Task 2 RAS)] **************************
skipping: no hosts matched

PLAY [Configure VPN Client (Task 1 P2P)] ***************************************

TASK [Gathering Facts] *********************************************************
ok: [client]

TASK [Copy static.key to client] ***********************************************
changed: [client]

TASK [Deploy P2P client configuration] *****************************************
changed: [client]

TASK [Ensure P2P OpenVPN service is enabled and started on client] *************
changed: [client]

RUNNING HANDLER [Restart P2P Client] *******************************************
changed: [client]

PLAY RECAP *********************************************************************
client                     : ok=7    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

sergey@uchuwi:~/otus/lesson34_1$ vagrant ssh client -c "iperf3 -c 10.10.10.1 -t 40 -i 5"
[fog][WARNING] Unrecognized arguments: libvirt_ip_command
Connecting to host 10.10.10.1, port 5201
[  5] local 10.10.10.2 port 45762 connected to 10.10.10.1 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-5.01   sec   297 MBytes   498 Mbits/sec   64    485 KBytes       
[  5]   5.01-10.01  sec   301 MBytes   505 Mbits/sec    4    600 KBytes       
[  5]  10.01-15.00  sec   300 MBytes   504 Mbits/sec  202    324 KBytes       
[  5]  15.00-20.01  sec   295 MBytes   494 Mbits/sec  123    424 KBytes       
[  5]  20.01-25.00  sec   295 MBytes   495 Mbits/sec  239    393 KBytes       
[  5]  25.00-30.01  sec   273 MBytes   457 Mbits/sec  347    303 KBytes       
[  5]  30.01-35.01  sec   293 MBytes   492 Mbits/sec  175    374 KBytes       
[  5]  35.01-40.00  sec   296 MBytes   496 Mbits/sec   49    507 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-40.00  sec  2.29 GBytes   493 Mbits/sec  1203             sender
[  5]   0.00-40.01  sec  2.29 GBytes   492 Mbits/sec                  receiver

iperf Done.
sergey@uchuwi:~/otus/lesson34_1$ ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory playbook.yml -e "vpn_mode=tap"
vagrant ssh client -c "iperf3 -c 10.10.10.1 -t 40 -i 5"

PLAY [Base setup for all VPN lab nodes] ***********************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************
[WARNING]: Host 'server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpreter could cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [server]
[WARNING]: Host 'client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpreter could cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [client]

TASK [Install OpenVPN, iperf3 and Easy-RSA] *******************************************************************************************************************
ok: [client]
ok: [server]

PLAY [Configure VPN Server (Task 1 P2P & Task 2 RAS)] *********************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************
ok: [server]

TASK [Generate static key for P2P VPN] ************************************************************************************************************************
ok: [server]

TASK [Fetch static.key to local host for distribution to client] **********************************************************************************************
ok: [server]

TASK [Deploy P2P server configuration] ************************************************************************************************************************
changed: [server]

TASK [Ensure P2P OpenVPN service is enabled and started] ******************************************************************************************************
ok: [server]

TASK [Ensure iperf3 daemon is running on server] **************************************************************************************************************
ok: [server]

TASK [Initialize Easy-RSA PKI] ********************************************************************************************************************************
ok: [server]

TASK [Build CA (non-interactive)] *****************************************************************************************************************************
ok: [server]

TASK [Generate and sign Server certificate] *******************************************************************************************************************
ok: [server]

TASK [Generate Diffie-Hellman parameters] *********************************************************************************************************************
ok: [server]

TASK [Generate tls-crypt key] *********************************************************************************************************************************
ok: [server]

TASK [Generate and sign Client certificate] *******************************************************************************************************************
ok: [server]

TASK [Deploy RAS server configuration] ************************************************************************************************************************
ok: [server]

TASK [Ensure RAS OpenVPN service is enabled and started] ******************************************************************************************************
ok: [server]

TASK [Create local bundle directory for host RAS client] ******************************************************************************************************
ok: [server -> localhost]

TASK [Fetch client certificates and keys to host] *************************************************************************************************************
ok: [server] => (item=/etc/openvpn/server/pki/ca.crt)
ok: [server] => (item=/etc/openvpn/server/pki/issued/client.crt)
ok: [server] => (item=/etc/openvpn/server/pki/private/client.key)
ok: [server] => (item=/etc/openvpn/server/ta.key)

TASK [Generate client.conf in local bundle directory] *********************************************************************************************************
ok: [server -> localhost]

RUNNING HANDLER [Restart P2P Server] **************************************************************************************************************************
changed: [server]

PLAY [Configure VPN Client (Task 1 P2P)] **********************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************
ok: [client]

TASK [Copy static.key to client] ******************************************************************************************************************************
ok: [client]

TASK [Deploy P2P client configuration] ************************************************************************************************************************
changed: [client]

TASK [Ensure P2P OpenVPN service is enabled and started on client] ********************************************************************************************
ok: [client]

RUNNING HANDLER [Restart P2P Client] **************************************************************************************************************************
changed: [client]

PLAY RECAP ****************************************************************************************************************************************************
client                     : ok=7    changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
server                     : ok=20   changed=2    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

[fog][WARNING] Unrecognized arguments: libvirt_ip_command
Connecting to host 10.10.10.1, port 5201
[  5] local 10.10.10.2 port 48942 connected to 10.10.10.1 port 5201
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-5.01   sec   283 MBytes   474 Mbits/sec  1977    852 KBytes       
[  5]   5.01-10.01  sec   283 MBytes   475 Mbits/sec   12    675 KBytes       
[  5]  10.01-15.01  sec   290 MBytes   487 Mbits/sec    0    914 KBytes       
[  5]  15.01-20.01  sec   282 MBytes   474 Mbits/sec  527    487 KBytes       
[  5]  20.01-25.01  sec   281 MBytes   472 Mbits/sec  199    262 KBytes       
[  5]  25.01-30.01  sec   290 MBytes   487 Mbits/sec    0    669 KBytes       
[  5]  30.01-35.00  sec   291 MBytes   489 Mbits/sec   59    414 KBytes       
[  5]  35.00-40.01  sec   284 MBytes   476 Mbits/sec  158    349 KBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-40.01  sec  2.23 GBytes   479 Mbits/sec  2932             sender
[  5]   0.00-40.02  sec  2.23 GBytes   478 Mbits/sec                  receiver

iperf Done.
sergey@uchuwi:~/otus/lesson34_1$ cd ras_client_bundle && sudo openvpn --config client.conf
[sudo: authenticate] Пароль:         
2026-11-14 00:06:44 DEPRECATED OPTION: --persist-key option ignored. Keys are now always persisted across restarts. 
2026-11-14 00:06:45 WARNING: file 'client.key' is group or others accessible
2026-11-14 00:06:45 OpenVPN 2.7.0 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] [DCO]
2026-11-14 00:06:45 library versions: OpenSSL 3.5.5 27 Jan 2026, LZO 2.10
2026-11-14 00:06:45 DCO version: 7.0.0-43-generic #43-Ubuntu SMP PREEMPT_DYNAMIC Fri Oct 23 13:25:25 UTC 2026
2026-11-14 00:06:45 TCP/UDP: Preserving recently used remote address: [AF_INET]192.168.56.10:1207
2026-11-14 00:06:45 Socket Buffers: R=[212992->212992] S=[212992->212992]
2026-11-14 00:06:45 UDPv4 link local: (not bound)
2026-11-14 00:06:45 UDPv4 link remote: [AF_INET]192.168.56.10:1207
2026-11-14 00:06:45 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:06:47 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:06:51 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:06:59 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:07:15 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:07:45 TLS Error: TLS key negotiation failed to occur within 60 seconds (check your network connectivity)
2026-11-14 00:07:45 TLS Error: TLS handshake failed
2026-11-14 00:07:45 SIGUSR1[soft,tls-error] received, process restarting
2026-11-14 00:07:45 Restart pause, 2 second(s)
2026-11-14 00:07:47 TCP/UDP: Preserving recently used remote address: [AF_INET]192.168.56.10:1207
2026-11-14 00:07:47 Socket Buffers: R=[212992->212992] S=[212992->212992]
2026-11-14 00:07:47 UDPv4 link local: (not bound)
2026-11-14 00:07:47 UDPv4 link remote: [AF_INET]192.168.56.10:1207
2026-11-14 00:07:47 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:07:49 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:07:53 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:08:01 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:08:17 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:08:48 TLS Error: TLS key negotiation failed to occur within 60 seconds (check your network connectivity)
2026-11-14 00:08:48 TLS Error: TLS handshake failed
2026-11-14 00:08:48 SIGUSR1[soft,tls-error] received, process restarting
2026-11-14 00:08:48 Restart pause, 2 second(s)
2026-11-14 00:08:50 TCP/UDP: Preserving recently used remote address: [AF_INET]192.168.56.10:1207
2026-11-14 00:08:50 Socket Buffers: R=[212992->212992] S=[212992->212992]
2026-11-14 00:08:50 UDPv4 link local: (not bound)
2026-11-14 00:08:50 UDPv4 link remote: [AF_INET]192.168.56.10:1207
2026-11-14 00:08:50 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:08:52 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
2026-11-14 00:08:56 read UDPv4 [ECONNREFUSED]: Connection refused (fd=3,code=111)
^C2026-11-14 00:08:58 event_wait : Interrupted system call (fd=-1,code=4)
2026-11-14 00:08:58 SIGINT[hard,] received, process exiting
sergey@uchuwi:~/otus/lesson34_1/ras_client_bundle$ cd ras_client_bundle && sudo openvpn --config client.conf
bash: cd: ras_client_bundle: Нет такого файла или каталога
sergey@uchuwi:~/otus/lesson34_1/ras_client_bundle$ sudo openvpn --config client.conf
2026-11-14 00:11:45 DEPRECATED OPTION: --persist-key option ignored. Keys are now always persisted across restarts. 
2026-11-14 00:11:45 WARNING: file 'client.key' is group or others accessible
2026-11-14 00:11:45 OpenVPN 2.7.0 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] [DCO]
2026-11-14 00:11:45 library versions: OpenSSL 3.5.5 27 Jan 2026, LZO 2.10
2026-11-14 00:11:45 DCO version: 7.0.0-43-generic #43-Ubuntu SMP PREEMPT_DYNAMIC Fri Oct 23 13:25:25 UTC 2026
2026-11-14 00:11:45 TCP/UDP: Preserving recently used remote address: [AF_INET]192.168.56.10:1207
2026-11-14 00:11:45 Socket Buffers: R=[212992->212992] S=[212992->212992]
2026-11-14 00:11:45 UDPv4 link local: (not bound)
2026-11-14 00:11:45 UDPv4 link remote: [AF_INET]192.168.56.10:1207
2026-11-14 00:11:59 TLS: Initial packet from [AF_INET]192.168.56.10:1207, sid=dcc8d9ab 72fd1e54
2026-11-14 00:11:59 VERIFY OK: depth=1, CN=OTUS-VPN-CA
2026-11-14 00:11:59 VERIFY KU OK
2026-11-14 00:11:59 Validating certificate extended key usage
2026-11-14 00:11:59 ++ Certificate has EKU (str) TLS Web Server Authentication, expects TLS Web Server Authentication
2026-11-14 00:11:59 VERIFY EKU OK
2026-11-14 00:11:59 VERIFY OK: depth=0, CN=server
2026-11-14 00:11:59 Control Channel: TLSv1.3, cipher TLSv1.3 TLS_AES_256_GCM_SHA384, peer certificate: 2048 bits RSA, signature: RSA-SHA256, peer temporary key: 253 bits X25519, peer signing digest/type: rsa_pss_rsae_sha256 RSASSA-PSS, key agreement: x25519
2026-11-14 00:11:59 [server] Peer Connection Initiated with [AF_INET]192.168.56.10:1207
2026-11-14 00:11:59 TLS: move_session: dest=TM_ACTIVE src=TM_INITIAL reinit_src=1
2026-11-14 00:11:59 TLS: tls_multi_process: initial untrusted session promoted to trusted
2026-11-14 00:11:59 PUSH: Received control message: 'PUSH_REPLY,route 10.20.20.0 255.255.255.0,topology net30,ping 10,ping-restart 120,ifconfig 10.20.20.6 10.20.20.5,peer-id 0,cipher AES-256-GCM,protocol-flags cc-exit tls-ekm dyn-tls-crypt,tun-mtu 1500'
2026-11-14 00:11:59 OPTIONS IMPORT: --ifconfig/up options modified
2026-11-14 00:11:59 OPTIONS IMPORT: route options modified
2026-11-14 00:11:59 OPTIONS IMPORT: tun-mtu set to 1500
2026-11-14 00:11:59 net_route_v4_best_gw query: dst 0.0.0.0
2026-11-14 00:11:59 net_route_v4_best_gw result: via 192.168.88.1 dev wlo1
2026-11-14 00:11:59 net_route_v4_best_gw query: dst 192.168.56.10
2026-11-14 00:11:59 net_route_v4_best_gw result: via 0.0.0.0 dev virbr1
2026-11-14 00:11:59 net_iface_new: add tun0 type ovpn
2026-11-14 00:11:59 DCO device tun0 opened
2026-11-14 00:11:59 ovpn-dco device [tun0] opened
2026-11-14 00:11:59 net_iface_mtu_set: mtu 1500 for tun0
2026-11-14 00:11:59 net_iface_up: set tun0 up
2026-11-14 00:11:59 net_addr_ptp_v4_add: 10.20.20.6 peer 10.20.20.5 dev tun0
2026-11-14 00:11:59 net_route_v4_add: 10.20.20.0/24 via 10.20.20.5 dev [NULL] table 0 metric 200
2026-11-14 00:11:59 Initialization Sequence Completed
2026-11-14 00:11:59 Data Channel: cipher 'AES-256-GCM', peer-id: 0
2026-11-14 00:11:59 Timers: ping 10, ping-restart 120
2026-11-14 00:11:59 Protocol options: protocol-flags cc-exit tls-ekm dyn-tls-crypt
^C2026-11-14 00:19:43 event_wait : Interrupted system call (fd=-1,code=4)
2026-11-14 00:19:43 net_route_v4_del: 10.20.20.0/24 via 10.20.20.5 dev [NULL] table 0 metric 200
2026-11-14 00:19:43 Closing ovpn-dco interface
2026-11-14 00:19:43 net_addr_ptp_v4_del: 10.20.20.6 dev tun0
2026-11-14 00:19:43 net_iface_del: delete tun0
2026-11-14 00:19:43 SIGINT[hard,] received, process exiting
sergey@uchuwi:~/otus/lesson34_1/ras_client_bundle$ 

