# Домашнее задание: Vagrant-стенд с VLAN и LACP (Bonding)

## Цель домашнего задания
Научиться настраивать виртуальные локальные сети (VLAN 802.1Q) и агрегирование сетевых интерфейсов (Bonding / Active-Backup) в Linux с использованием Vagrant и Ansible.

## Текст задания
* В `Office1` в тестовой подсети появляются серверы с дополнительными интерфейсами и адресами в internal-сети `testLAN`:
  * `testClient1` — `10.10.10.254`
  * `testClient2` — `10.10.10.254`
  * `testServer1` — `10.10.10.1`
  * `testServer2` — `10.10.10.1`
* Развести хосты с помощью VLAN:
  * `testClient1 <-> testServer1` (VLAN 1)
  * `testClient2 <-> testServer2` (VLAN 2)
* Между `centralRouter` и `inetRouter` «пробросить» 2 линка (общая internal-сеть) и объединить их в бонд (`bond0`), проверить работу с отключением интерфейсов.
* Формат сдачи ДЗ: `Vagrant` + `Ansible`.

---

## Схема сети

```text
                        +-------------------+

                        |    inetRouter     |
                        |   (AlmaLinux 9)   |
                        |   192.168.56.10   |
                        +---------+---------+
                                  |
                         bond0: 192.168.255.1/30
                           eth2   |   eth3

                            |     |     |
                         (lesson36_router_net)

                            |     |     |
                           eth2   |   eth3
                         bond0: 192.168.255.2/30
                                  |
                        +---------+---------+

                        |   centralRouter   |
                        |   (AlmaLinux 9)   |
                        |   192.168.56.11   |
                        +---------+---------+
                                  | eth4 (192.168.255.9/30)
                                  |
                         (lesson36_o1c)
                                  |
                                  | eth2 (192.168.255.10/30)
                        +---------+---------+

                        |   office1Router   |
                        |   (AlmaLinux 9)   |
                        |   192.168.56.20   |
                        +---------+---------+
                                  | eth3
                                  |
         =========================|=========================
                      Общая L2-сеть: lesson36_testLAN
         =====+=================+===========+==============+

              | eth2            | eth2      | eth2         | eth2
      +-------+-------+ +-------+-------+ +-+------------+ +-------------+

      |  testClient1  | |  testServer1  | |  testClient2 | | testServer2 |
      | (AlmaLinux 9) | | (AlmaLinux 9) | |(Ubuntu 24.04)| |(Ubuntu24.04)|
      | 192.168.56.21 | | 192.168.56.22 | |192.168.56.31 | |192.168.56.32|
      |               | |               | |              | |             |
      |   eth2.1 (V1) | |   eth2.1 (V1) | |  vlan2 (V2)  | |  vlan2 (V2) |
      | 10.10.10.254  | |  10.10.10.1   | | 10.10.10.254 | |  10.10.10.1 |
      +---------------+ +---------------+ +--------------+ +-------------+
      [          VLAN ID = 1            ] [         VLAN ID = 2          ]
```

---

## Особенности проектирования и реализации решения

1. **Адаптация стенда под KVM / `libvirt` (Ubuntu 26.04):**
   * Вместо устаревших образов VirtualBox (`centos/stream8` и `ubuntu/jammy64`) использованы актуальные KVM-совместимые образы **`bento/almalinux-9`** (для маршрутизаторов и хостов VLAN 1) и **`bento/ubuntu-24.04`** (для хостов VLAN 2).
   * Для эмуляции изолированных L2-сетей без вмешательства встроенного DHCP-сервера `dnsmasq` в `Vagrantfile` использованы параметры `libvirt__forward_mode => "veryisolated"` и `libvirt__dhcp_enabled => false`.
   * В Ruby 3 (Vagrant 2.4+) передача параметров сети из хэша выполняется через распаковку именованных аргументов `box.vm.network "private_network", **ipconf`.
2. **Идемпотентная настройка через Ansible:**
   * В RHEL 9 / AlmaLinux 9 классические скрипты `ifcfg-*` объявлены устаревшими в пользу формата `keyfile` NetworkManager, поэтому настройка VLAN 1 и `bond0` выполнена через модуль `community.general.nmcli`.
   * На Ubuntu 24.04 настройка VLAN 2 выполнена штатно через генерацию отдельного файла конфигурации Netplan (`/etc/netplan/60-vlan.yaml`) из Jinja2-шаблона.
   * Плейбук полностью идемпотентен: его можно многократно перезапускать командой `vagrant provision` без перезагрузки виртуальных машин.
3. **Режим работы бонда:**
   * Настроен режим `active-backup` (`mode=1`, `miimon=100`) без подмены MAC-адресов (`fail_over_mac=0`), что обеспечивает стабильную работу ARP-таблиц в виртуальных мостах Linux (`libvirt`).

---

## Структура репозитория

```text
.
├── README.md
├── Vagrantfile
└── ansible/
    ├── hosts
    ├── provision.yml
    └── templates/
        └── 50-cloud-init.yaml.j2
```

---

## Запуск стенда и проверка работы

### 1. Развёртывание виртуальных машин и провижининг
Для избежания гонки при создании виртуальных сетей в `libvirt` стенд запускается с флагом `--no-parallel`:

```bash
vagrant up --no-parallel
```

### 2. Проверка изоляции L2 с помощью VLAN 802.1Q

**Проверка VLAN 1 (`testClient1` <-> `testServer1`, AlmaLinux 9):**
```bash
\$ vagrant ssh testClient1 -c "ip -br a && ping -c 4 10.10.10.1"
lo               UNKNOWN        127.0.0.1/8 ::1/128 
eth0             UP             192.168.121.244/24 fe80::dcd2:636c:3886:6244/64 
eth1             UP             192.168.56.21/24 fe80::5054:ff:fe23:9476/64 
eth2             UP             
eth2.1@eth2      UP             10.10.10.254/24 fe80::5e9d:1bb1:f3ed:7dea/64 
PING 10.10.10.1 (10.10.10.1) 56(84) bytes of data.
64 bytes from 10.10.10.1: icmp_seq=1 ttl=64 time=1.23 ms
64 bytes from 10.10.10.1: icmp_seq=2 ttl=64 time=0.821 ms
64 bytes from 10.10.10.1: icmp_seq=3 ttl=64 time=0.891 ms
64 bytes from 10.10.10.1: icmp_seq=4 ttl=64 time=1.08 ms

--- 10.10.10.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
```

**Проверка VLAN 2 (`testClient2` <-> `testServer2`, Ubuntu 24.04):**
```bash
\$ vagrant ssh testClient2 -c "ip -br a && ping -c 4 10.10.10.1"
lo               UNKNOWN        127.0.0.1/8 ::1/128 
eth0             UP             192.168.121.202/24 metric 100 fe80::5054:ff:fe69:1e68/64 
eth1             UP             192.168.56.31/24 fe80::5054:ff:febf:9da0/64 
eth2             UP             fe80::5054:ff:feb5:a036/64 
vlan2@eth2       UP             10.10.10.254/24 fe80::5054:ff:feb5:a036/64 
PING 10.10.10.1 (10.10.10.1) 56(84) bytes of data.
64 bytes from 10.10.10.1: icmp_seq=1 ttl=64 time=0.720 ms
64 bytes from 10.10.10.1: icmp_seq=2 ttl=64 time=0.804 ms
64 bytes from 10.10.10.1: icmp_seq=3 ttl=64 time=1.05 ms
64 bytes from 10.10.10.1: icmp_seq=4 ttl=64 time=0.901 ms

--- 10.10.10.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3058ms
```
*Вывод:* Несмотря на совпадение IP-адресов (`10.10.10.1` и `10.10.10.254`) и общую L2-сеть `lesson36_testLAN`, хосты изолированы тегами 802.1Q (VLAN 1 и VLAN 2) и не конфликтуют между собой.

---

### 3. Проверка отказоустойчивости агрегированного канала (`bond0`)

**Проверка состояния `bond0` на `inetRouter`:**
```bash
\$ vagrant ssh inetRouter -c "cat /proc/net/bonding/bond0"
Ethernet Channel Bonding Driver: v5.14.0-570.28.1.el9_6.x86_64

Bonding Mode: fault-tolerance (active-backup)
Primary Slave: None
Currently Active Slave: eth2
MII Status: up
MII Polling Interval (ms): 100
Up Delay (ms): 0
Down Delay (ms): 0
Peer Notification Delay (ms): 0

Slave Interface: eth2
MII Status: up
Speed: Unknown
Duplex: Unknown
Link Failure Count: 0
Permanent HW addr: 52:54:00:3c:b3:6e
Slave queue ID: 0

Slave Interface: eth3
MII Status: up
Speed: Unknown
Duplex: Unknown
Link Failure Count: 0
Permanent HW addr: 52:54:00:46:7c:53
Slave queue ID: 0
```

**Тест переключения при отказе активного интерфейса:**
1. На `inetRouter` запущен непрерывный пинг до `centralRouter` (`192.168.255.2`):
   ```bash
   vagrant ssh inetRouter -c "ping 192.168.255.2"
   ```
2. Во втором терминале на `centralRouter` отключён интерфейс `eth2`:
   ```bash
   \$ vagrant ssh centralRouter -c "sudo ip link set dev eth2 down && cat /proc/net/bonding/bond0 | grep -E 'Currently Active|Slave Interface|MII Status'"
   Currently Active Slave: eth3
   MII Status: up
   Slave Interface: eth2
   MII Status: down
   Slave Interface: eth3
   MII Status: up
   ```
3. Пинг с `inetRouter` на `192.168.255.2` продолжился без прерывания связи, трафик автоматически переключился на резервный интерфейс `eth3`.
4. Возврат интерфейса `eth2` в состав агрегата:
   ```bash
   vagrant ssh centralRouter -c "sudo nmcli connection up bond0-slave-eth2"
   ```

