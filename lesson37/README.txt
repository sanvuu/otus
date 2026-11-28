
## Цель домашнего задания
Научиться настраивать LDAP-сервер и подключать к нему LDAP-клиентов для централизованного управления пользователями и авторизацией.

## Описание выполненной работы
1. Развернут инфраструктурный стенд из 3 виртуальных машин на базе **CentOS Stream 9** с использованием Vagrant и провайдера **libvirt (KVM)**.
2. Произведена ручная установка и полная конфигурация мастер-сервера **FreeIPA** (`ipa.otus.lan`).
3. Написан и успешно запущен **Ansible-playbook** для автоматизации настройки и подключения клиентов (`client1.otus.lan`, `client2.otus.lan`) к домену FreeIPA.
4. Отключены `firewalld` и `SELinux` на всех хостах согласно базовым требованиям методического пособия.

---

## Архитектура стенда (Vagrantfile)

Для развертывания использовался бокс `generic/centos9s`. Конфигурация виртуальных машин:
* **ipa.otus.lan** — IP: `192.168.57.10`, RAM: 2ГБ, CPU: 1
* **client1.otus.lan** — IP: `192.168.57.11`, RAM: 2ГБ, CPU: 1
* **client2.otus.lan** — IP: `192.168.57.12`, RAM: 2ГБ, CPU: 1

---

## Пошаговое описание реализации и выводы команд

### 1. Настройка сервера FreeIPA
На сервере была исправлена конфигурация петлевого интерфейса для корректной работы IPv6 (`::1`), настроен локальный файл `/etc/hosts` и запущен мастер установки:
```bash
dnf install -y ipa-server
ipa-server-install
```

Установка завершилась успешно:
```text
Setup complete
The ipa-server-install command was successful
```

Проверка получения билета Kerberos на сервере:
```bash
[root@ipa ~]# kinit admin
Password for admin@OTUS.LAN: 
[root@ipa ~]# klist
Ticket cache: KCM:0
Default principal: admin@OTUS.LAN

Valid starting       Expires              Service principal
11/28/2026 09:15:32  11/29/2026 09:08:44  krbtgt/OTUS.LAN@OTUS.LAN
```

### 2. Конфигурация клиентов через Ansible
Был разработан плейбук `ansible/provision.yml`, автоматизирующий установку `freeipa-client`, синхронизацию времени по `chrony`, отключение межсетевого экрана и регистрацию машин на сервере.

Вывод успешного выполнения плейбука:
```text
PLAY RECAP ******************************************************************************************************************************************************
client1.otus.lan           : ok=10   changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
client2.otus.lan           : ok=10   changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0 
```

### 3. Проверка централизованной авторизации на клиентах

#### Проверка на client1.otus.lan:
```bash
[vagrant@client1 ~]\$ kinit admin
Password for admin@OTUS.LAN: 
[vagrant@client1 ~]\$ klist
Ticket cache: KCM:1000
Default principal: admin@OTUS.LAN

Valid starting       Expires              Service principal
11/28/2026 12:35:03  11/29/2026 11:51:00  krbtgt/OTUS.LAN@OTUS.LAN
```

#### Проверка на client2.otus.lan:
```bash
[vagrant@client2 ~]\$ kinit admin
Password for admin@OTUS.LAN: 
[vagrant@client2 ~]\$ klist
Ticket cache: KCM:1000
Default principal: admin@OTUS.LAN

Valid starting       Expires              Service principal
11/28/2026 12:35:21  11/29/2026 12:16:26  krbtgt/OTUS.LAN@OTUS.LAN
```

**Вывод:** Клиенты успешно аутентифицируются на удаленном LDAP/Kerberos сервере FreeIPA. Стенд полностью готов к работе.

