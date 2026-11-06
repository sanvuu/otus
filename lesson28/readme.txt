# Домашнее задание: Настройка PXE-сервера для автоустановки Ubuntu 24.04 LTS (UEFI)

## 1. Цель работы
Настроить PXE-сервер с поддержкой UEFI для автоматической установки Ubuntu Server 24.04 LTS без участия пользователя (Autoinstall). Обеспечить стабильную установку с минимальными требованиями к оперативной памяти клиента.

## 2. Архитектура и используемые технологии
*   **Виртуализация:** KVM / libvirt (через Vagrant).
*   **PXE-сервер:** Ubuntu 24.04, `dnsmasq` (DHCP + TFTP), Nginx (HTTP для Autoinstall-конфигурации), NFS-сервер (для отдачи файлов установщика).
*   **Загрузчик:** GRUB 2.12 (UEFI), `shim-signed` (Secure Boot).
*   **Автоустановка:** Ubuntu Autoinstall (cloud-init).

## 3. Структура файлов проекта
```text
~/otus/lesson28/
├── Vagrantfile
├── playbook.yml
└── ubuntu-24.04.5-live-server-amd64.iso
```
если iso файла нет в папке с проектом, то iso скачивается сначала с ubuntu.com

## 4. Ключевые особенности реализации
1.  **Сетевая изоляция:** Создана изолированная сеть `pxe_net` (192.168.56.0/24). DHCP-сервер libvirt отключен, раздачей адресов занимается `dnsmasq` на PXE-сервере.
2.  **UEFI-загрузка:** Используются официальные подписанные загрузчики `shimx64.efi.signed` (как `bootx64.efi`) и `grubnetx64.efi.signed` (как `grubx64.efi`).
3.  **Решение проблемы с памятью (NFS):** Вместо того чтобы заставлять клиента скачивать полный ISO-образ в оперативную память (что приводило к ошибке `No space left on device`), установщик монтирует распакованное содержимое ISO напрямую с NFS-шары на PXE-сервере. Это позволяет выделить клиенту всего **2 ГБ RAM**.
4.  **Автоустановка:** Файлы `meta-data` и `user-data` раздаются по HTTP. Пароль пользователя `ubuntu` задан с помощью сгенерированного хеша SHA-512.

## 5. Конфигурация dnsmasq (`/etc/dnsmasq.conf`)
```ini
interface=eth1
bind-interfaces
dhcp-range=192.168.56.50,192.168.56.100,255.255.255.0,1h
dhcp-option=option:router,192.168.56.10
dhcp-option=option:dns-server,192.168.56.10
enable-tftp
tftp-root=/srv/tftp
dhcp-match=set:efi-x86_64,option:client-arch,7
dhcp-match=set:efi-x86_64,option:client-arch,9
dhcp-boot=tag:efi-x86_64,bootx64.efi
```

## 6. Конфигурация загрузчика GRUB (`/srv/tftp/grub/grub.cfg`)
```grub
set default="0"
set timeout=5
menuentry "Autoinstall Ubuntu 24.04.5 LTS (NFS)" {
    set gfxpayload=keep
    linux /vmlinuz root=/dev/ram0 ip=dhcp autoinstall "ds=nocloud-net;s=http://192.168.56.10/autoinstall/" cloud-config-url=/dev/null netboot=nfs nfsroot=192.168.56.10:/srv/nfs_iso ---
    initrd /initrd
}
```

## 7. Файл автоустановки `user-data`
```yaml
#cloud-config
autoinstall:
  version: 1
  identity:
    hostname: ubuntu-client
    password: "$6$UPy7iAB4qvAnPddy$fYFPRgQ4OSvTXypdZ0E11mkP4WKicJr1iAPzdehaLKGQIK60LajXyIUdCYZ6q4yXPI6I.jcT6fHaNZkvSSB9k."
    username: ubuntu
  locale: en_US.UTF-8
  keyboard:
    layout: us
  storage:
    layout:
      name: direct
  ssh:
    install-server: true
    allow-pw: true
  shutdown: poweroff
```

## 8. Запуск клиентской машины (команда `virt-install`)

Для запуска клиента используйте следующую команду на хосте (не забудьте проверить имя сети `pxe_net` через `virsh net-list --all`):

```bash
sudo virt-install \
  --name pxeclient \
  --memory 2048 \
  --vcpus 2 \
  --disk size=20,format=qcow2 \
  --network network=pxe_net,model=virtio \
  --boot uefi,network,hd \
  --os-variant ubuntu24.04 \
  --graphics spice \
  --noautoconsole
```
*КЛИЕНТУ ВЫДЕЛЕНО ВСЕГО 2 ГБ ОЗУ, ТАК КАК БЛАГОДАРЯ NFS-МОНТИРОВАНИЮ ISO БОЛЬШЕ НЕ ЗАГРУЖАЕТСЯ В RAM.*

## 9. Результаты работы
*   Клиентская машина успешно получает IP по DHCP от `dnsmasq` (192.168.56.93).
*   Загрузчик GRUB и ядро загружаются по TFTP.
*   Установщик монтирует NFS-шару (`/srv/nfs_iso`) и автоматически устанавливает систему.
*   После установки клиент выключается (`poweroff`), как и было задано в конфигурации.
*   При повторном включении клиент загружается с жесткого диска, вход в систему выполнен под пользователем `ubuntu` с паролем `ubuntu`.

## 10. Выводы
В ходе работы был настроен PXE-сервер для автоматической установки Ubuntu Server 24.04 LTS в режиме UEFI. Использование NFS для отдачи файлов установщика позволило полностью исключить загрузку ISO-образа в оперативную память клиента, что снизило требования к ОЗУ до 2 ГБ и избавило от ошибки `No space left on device`. Все этапы установки проходят автоматически.

