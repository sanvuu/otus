Welcome to Ubuntu 26.04 LTS (GNU/Linux 7.0.0-28-generic x86_64)

 * Documentation:  https://docs.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

This system has been minimized by removing packages and content that are
not required on a system that users do not log into.

To restore this content, you can run the 'unminimize' command.
Last login: Fri Jul 31 18:36:21 2026 from 192.168.122.1
sergey@ubuntu290726:~$ sudo apt install msmtp
[sudo: authenticate] Password:         
The following packages were automatically installed and are no longer required:
  linux-headers-7.0.0-14          linux-image-unsigned-7.0.0-14-generic    linux-modules-7.0.0-14-generic  linux-tools-7.0.0-14-generic
  linux-headers-7.0.0-14-generic  linux-main-modules-zfs-7.0.0-14-generic  linux-tools-7.0.0-14
Use 'sudo apt autoremove' to remove them.

Installing:
  msmtp

Installing dependencies:
  gsasl-common  libgsasl18  libgssglue1  libidn12  libntlm0  libsecret-1-0  libsecret-common

Suggested packages:
  msmtp-mta

Summary:
  Upgrading: 0, Installing: 8, Removing: 0, Not Upgrading: 38
  Download size: 503 kB
  Space needed: 1824 kB / 11.3 GB available

Continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 gsasl-common all 2.2.2-4ubuntu1.1 [4358 B]
Get:2 http://archive.ubuntu.com/ubuntu resolute/main amd64 libgssglue1 amd64 0.9-2 [20.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 libidn12 amd64 1.43-2ubuntu0.26.04.1 [57.8 kB]
Get:4 http://archive.ubuntu.com/ubuntu resolute/main amd64 libntlm0 amd64 1.8-6 [20.5 kB]
Get:5 http://archive.ubuntu.com/ubuntu resolute-updates/main amd64 libgsasl18 amd64 2.2.2-4ubuntu1.1 [83.9 kB]
Get:6 http://archive.ubuntu.com/ubuntu resolute/main amd64 libsecret-common all 0.21.7-2build1 [5608 B]
Get:7 http://archive.ubuntu.com/ubuntu resolute/main amd64 libsecret-1-0 amd64 0.21.7-2build1 [119 kB]
Get:8 http://archive.ubuntu.com/ubuntu resolute/universe amd64 msmtp amd64 1.8.32-1 [191 kB]
Fetched 503 kB in 2s (269 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 8.)
debconf: falling back to frontend: Readline
Preconfiguring packages ...
Configuring msmtp
-----------------

 Apparmor is a kernel security mechanism to restrict programs capabilities
 with per-program profiles.
 .
 The AppArmor profile for msmtp covers a lot of common usecases but there are
 still corner cases with some options which breaks msmtp with incomprehensible
 permissions denied errors.

Enable AppArmor support? [yes/no] no


Selecting previously unselected package gsasl-common.
(Reading database ... 128376 files and directories currently installed.)
Preparing to unpack .../0-gsasl-common_2.2.2-4ubuntu1.1_all.deb ...
Unpacking gsasl-common (2.2.2-4ubuntu1.1) ...
Selecting previously unselected package libgssglue1:amd64.
Preparing to unpack .../1-libgssglue1_0.9-2_amd64.deb ...
Unpacking libgssglue1:amd64 (0.9-2) ...
Selecting previously unselected package libidn12:amd64.
Preparing to unpack .../2-libidn12_1.43-2ubuntu0.26.04.1_amd64.deb ...
Unpacking libidn12:amd64 (1.43-2ubuntu0.26.04.1) ...
Selecting previously unselected package libntlm0:amd64.
Preparing to unpack .../3-libntlm0_1.8-6_amd64.deb ...
Unpacking libntlm0:amd64 (1.8-6) ...
Selecting previously unselected package libgsasl18:amd64.
Preparing to unpack .../4-libgsasl18_2.2.2-4ubuntu1.1_amd64.deb ...
Unpacking libgsasl18:amd64 (2.2.2-4ubuntu1.1) ...
Selecting previously unselected package libsecret-common.
Preparing to unpack .../5-libsecret-common_0.21.7-2build1_all.deb ...
Unpacking libsecret-common (0.21.7-2build1) ...
Selecting previously unselected package libsecret-1-0:amd64.
Preparing to unpack .../6-libsecret-1-0_0.21.7-2build1_amd64.deb ...
Unpacking libsecret-1-0:amd64 (0.21.7-2build1) ...
Selecting previously unselected package msmtp.
Preparing to unpack .../7-msmtp_1.8.32-1_amd64.deb ...
Unpacking msmtp (1.8.32-1) ...
Setting up libntlm0:amd64 (1.8-6) ...
Setting up libidn12:amd64 (1.43-2ubuntu0.26.04.1) ...
Setting up libgssglue1:amd64 (0.9-2) ...
Setting up libgsasl18:amd64 (2.2.2-4ubuntu1.1) ...
Setting up gsasl-common (2.2.2-4ubuntu1.1) ...
Setting up libsecret-common (0.21.7-2build1) ...
Setting up libsecret-1-0:amd64 (0.21.7-2build1) ...
Setting up msmtp (1.8.32-1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79.)
debconf: falling back to frontend: Readline
Skipping profile in /etc/apparmor.d/disable: usr.bin.msmtp
Processing triggers for libc-bin (2.43-2ubuntu2.3) ...
Scanning processes...                                                                                                                                          
Scanning linux images...                                                                                                                                       

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
sergey@ubuntu290726:~$ sudo nano /etc/msmtprc
sergey@ubuntu290726:~$ sudo nano /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo chmod +x /etc/msmtprc
sergey@ubuntu290726:~$ sudo nano /var/lo
local/ lock/  log/   
sergey@ubuntu290726:~$ sudo nano /var/log/
README                 apt/                   cloud-init-output.log  installer/             private/               
alternatives.log       bootstrap.log          cloud-init.log         journal/               unattended-upgrades/   
apache2/               btmp                   dist-upgrade/          lastlog                wtmp                   
apport.log             chrony/                dpkg.log               nginx/                 
sergey@ubuntu290726:~$ sudo nano /var/log/nginx/
access.log  error.log   
sergey@ubuntu290726:~$ sudo nano /var/log/nginx/access.log 
sergey@ubuntu290726:~$ /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
-bash: /usr/local/bin/log_report.sh: Permission denied
sergey@ubuntu290726:~$ sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sudo: cannot execute '/usr/local/bin/log_report.sh': Permission denied (os error 13)
sergey@ubuntu290726:~$ sudo nano /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
-bash: /usr/local/bin/log_report.sh: Permission denied
sergey@ubuntu290726:~$ sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sudo: cannot execute '/usr/local/bin/log_report.sh': Permission denied (os error 13)
sergey@ubuntu290726:~$ sudo cat /usr/local/bin/log_report.sh
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: ./log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-admin@example.com}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки (предотвращаем параллельный запуск) ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

# ---------- Текущий размер лог-файла ----------
CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

# Если файл был усечён (ротация), начинаем с начала
if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

# Если новых данных нет – завершаем работу
if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

# ---------- Временный файл для отчёта ----------
REPORT=$(mktemp)

# ---------- Обработка новых строк (от POS до конца файла) ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++
    ip = $1
    ip_count[ip]++

    ts = substr($4, 2, length($4)-2)
    if (min_ts == "" || ts < min_ts) min_ts = ts
    if (max_ts == "" || ts > max_ts) max_ts = ts

    url = $6
    url_count[url]++

    status = $8
    status_count[status]++
    if (status >= 400) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                КОНЕЦ ОТЧЁТА"
    print "===================================================="
}' > "$REPORT"

# ---------- Обновление позиции ----------
echo "$CUR_SIZE" > "$STATE_FILE"

# ---------- Отправка письма через msmtp, если отчёт не пуст ----------
if [ -s "$REPORT" ]; then
    SUBJECT="Отчёт о работе веб-сервера ($(date '+%Y-%m-%d %H:%M'))"
    {
        echo "To: $EMAIL"
        echo "Subject: $SUBJECT"
        echo "Content-Type: text/plain; charset=UTF-8"
        echo ""
        cat "$REPORT"
    } | msmtp -t
else
    echo "Отчёт пуст, письмо не отправлено."
fi

# ---------- Очистка и снятие блокировки ----------
rm -f "$REPORT"
flock -u 200

exit 0
sergey@ubuntu290726:~$ sudo chmod +x /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo chmod 600 /etc/msmtprc
sergey@ubuntu290726:~$ echo -e "To: i@moohoo.ru\nSubject: Test\n\nHello from msmtp" | msmtp -t
msmtp: account default not found: no configuration file available
sergey@ubuntu290726:~$ sudo cat /etc/msmtprc 
defaults
auth           on
tls            on
tls_starttls   on
tls_certcheck  off
tls_trust_file /etc/ssl/certs/ca-certificates.crt
logfile        /home/sergey/msmtp.log

account        default
host           192.168.88.70
port           587
from           i@moohoo.ru
user           i@moohoo.ru
password       iveNTarIBlEdoRYLeRYlELbYPSENelOR
sergey@ubuntu290726:~$ sudo nano /etc/msmtprc
sergey@ubuntu290726:~$ echo -e "To: i@moohoo.ru\nSubject: Test\n\nHello from msmtp" | msmtp -t
msmtp: account default not found: no configuration file available
sergey@ubuntu290726:~$ sudo cat /etc/msmtprc 
defaults
auth           on
tls            on
tls_starttls   on
tls_certcheck  off
tls_trust_file /etc/ssl/certs/ca-certificates.crt
logfile        /home/sergey/msmtp.log

account        default
host           mail.moohoo.ru
port           465
from           i@moohoo.ru
user           i@moohoo.ru
password       iveNTarIBlEdoRYLeRYlELbYPSENelOR
sergey@ubuntu290726:~$ sudo nano /etc/msmtprc
sergey@ubuntu290726:~$ openssl s_client -connect mail.moohoo.ru:465 -starttls smtp
Connecting to 147.78.66.245
CONNECTED(00000003)
quit
exit
^C
sergey@ubuntu290726:~$ ll
total 32
drwxr-x--- 4 sergey sergey 4096 Jul 29 18:11 ./
drwxr-xr-x 3 root   root   4096 Jul 29 17:53 ../
-rw------- 1 sergey sergey 2924 Aug  1 05:24 .bash_history
-rw-r--r-- 1 sergey sergey  220 Feb 13 12:16 .bash_logout
-rw-r--r-- 1 sergey sergey 3771 Feb 13 12:16 .bashrc
drwx------ 2 sergey sergey 4096 Jul 29 18:01 .cache/
-rw-r--r-- 1 sergey sergey  807 Feb 13 12:16 .profile
drwx------ 2 sergey sergey 4096 Jul 29 18:02 .ssh/
sergey@ubuntu290726:~$ echo -e "To: i@moohoo.ru\nSubject: Test\n\nHello from msmtp" | msmtp -t
msmtp: account default not found: no configuration file available
sergey@ubuntu290726:~$ sudo cat /etc/msmtprc 
defaults
auth           on
tls            on
tls_starttls   off
tls_certcheck  off
tls_trust_file /etc/ssl/certs/ca-certificates.crt
logfile        /home/sergey/msmtp.log

account        default
host           mail.moohoo.ru
port           465
from           i@moohoo.ru
user           i@moohoo.ru
password       iveNTarIBlEdoRYLeRYlELbYPSENelOR
sergey@ubuntu290726:~$ echo -e "To: i@moohoo.ru\nSubject: Test\n\nHello from msmtp" | sudo msmtp -t
sergey@ubuntu290726:~$ sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sergey@ubuntu290726:~$ 
sergey@ubuntu290726:~$ sudo tee /usr/local/bin/log_report.sh >/dev/null <<'EOF'
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: /usr/local/bin/log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-i@moohoo.ru}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

REPORT=$(mktemp)

# ---------- Обработка новых строк с улучшенным парсингом ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++

    ip = $1
    if (ip != "") ip_count[ip]++

    if (match($0, /\[([^]]+)\]/)) {
        ts = substr($0, RSTART+1, RLENGTH-2)
        if (min_ts == "" || ts < min_ts) min_ts = ts
        if (max_ts == "" || ts > max_ts) max_ts = ts
    }

    if (match($0, /"[A-Z]+ ([^"]+)"/)) {
        url = substr($0, RSTART+1, RLENGTH-2)
        if (match(url, /[A-Z]+ (.+)/)) {
            url = substr(url, RSTART+RLENGTH-1)
        }
        if (url != "") url_count[url]++
    } else {
        url_count["(malformed)"]++
    }

    if (match($0, /"[^"]*" ([0-9]{3}) /)) {
        status = substr($0, RSTART+RLENGTH-4, 3)
    } else {
        if (match($0, /[^0-9]([0-9]{3})[^0-9]/)) {
            status = substr($0, RSTART+1, RLENGTH-2)
        } else {
            status = "???"
        }
    }
    status_count[status]++
    if (status >= 400 && status ~ /^[0-9]+$/) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                КОНЕЦ ОТЧЁТА"
    print "===================================================="
}' > "$REPORT"

# ---------- Обновление позиции ----------
echo "$CUR_SIZE" > "$STATE_FILE"

# ---------- Отправка письма ----------
if [ -s "$REPORT" ]; then
    SUBJECT="Отчёт о работе веб-сервера ($(date '+%Y-%m-%d %H:%M'))"
    {
        echo "To: $EMAIL"
        echo "Subject: $SUBJECT"
        echo "Content-Type: text/plain; charset=UTF-8"
        echo ""
        cat "$REPORT"
    } | msmtp -t
else
    echo "Отчёт пуст, письмо не отправлено."
fi

rm -f "$REPORT"
flock -u 200

exit 0
EOF
sudo chmod +x /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo chmod +x /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo tee /usr/local/bin/log_report.sh >/dev/null <<'EOF'
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: /usr/local/bin/log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-i@moohoo.ru}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

REPORT=$(mktemp)

# ---------- Обработка новых строк с улучшенным парсингом ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++

    ip = $1
    if (ip != "") ip_count[ip]++

    if (match($0, /\[([^]]+)\]/)) {
        ts = substr($0, RSTART+1, RLENGTH-2)
        if (min_ts == "" || ts < min_ts) min_ts = ts
        if (max_ts == "" || ts > max_ts) max_ts = ts
    }

    if (match($0, /"[A-Z]+ ([^"]+)"/)) {
        url = substr($0, RSTART+1, RLENGTH-2)
        if (match(url, /[A-Z]+ (.+)/)) {
            url = substr(url, RSTART+RLENGTH-1)
        }
        if (url != "") url_count[url]++
    } else {
        url_count["(malformed)"]++
    }

    if (match($0, /"[^"]*" ([0-9]{3}) /)) {
        status = substr($0, RSTART+RLENGTH-4, 3)
    } else {
        if (match($0, /[^0-9]([0-9]{3})[^0-9]/)) {
            status = substr($0, RSTART+1, RLENGTH-2)
        } else {
            status = "???"
        }
    }
    status_count[status]++
    if (status >= 400 && status ~ /^[0-9]+$/) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                К/usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
                       sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
Новых записей в логе нет.
sergey@ubuntu290726:~$ sudo nano /var/log/nginx/access.log 
sergey@ubuntu290726:~$ sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
Новых записей в логе нет.
sergey@ubuntu290726:~$ sudo rm /home/sergey/log_report.state
sergey@ubuntu290726:~$ sudo /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sergey@ubuntu290726:~$ 

sergey@ubuntu290726:~$ sudo tee /usr/local/bin/log_report.sh >/dev/null <<'EOF'
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: /usr/local/bin/log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-i@moohoo.ru}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

REPORT=$(mktemp)

# ---------- Обработка новых строк с корректным парсингом ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++

    # IP (первое поле)
    ip = $1
    if (ip != "") ip_count[ip]++

    # Временная метка [dd/MMM/yyyy:hh:mm:ss +tz]
    if (match($0, /\[([^]]+)\]/)) {
        ts = substr($0, RSTART+1, RLENGTH-2)
        if (min_ts == "" || ts < min_ts) min_ts = ts
        if (max_ts == "" || ts > max_ts) max_ts = ts
    }

    # Извлечение URL из кавычек: "МЕТОД ПУТЬ ПРОТОКОЛ"
    if (match($0, /"([^"]*)"/)) {
        inside = substr($0, RSTART+1, RLENGTH-2)
        # Разбиваем по пробелам
        split(inside, parts, " ")
        # Если есть второй элемент (путь), берём его
        if (length(parts) >= 2) {
            url = parts[2]
        } else {
            # Если всего одно слово – это может быть просто путь без метода
            url = inside
        }
        # Если URL начинается с "/" или это "/" – добавляем, иначе считаем битым
        if (url ~ /^\/.*/ || url == "/") {
            url_count[url]++
        } else {
            # Если URL не похож на путь, возможно это битый запрос
            url_count["(malformed)"]++
        }
    } else {
        # Если нет кавычек (бинарные данные), считаем битым
        url_count["(malformed)"]++
    }

    # Извлечение HTTP-статуса (трёхзначный код после кавычек)
    if (match($0, /"[^"]*" ([0-9]{3}) /)) {
        status = substr($0, RSTART+RLENGTH-4, 3)
    } else {
        # Попытка найти любой трёхзначный код в строке
        if (match($0, /[^0-9]([0-9]{3})[^0-9]/)) {
            status = substr($0, RSTART+1, RLENGTH-2)
        } else {
            status = "???"
        }
    }
    status_count[status]++
    if (status >= 400 && status ~ /^[0-9]+$/) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                КОНЕЦ ОТЧЁТА"
    print "===================================================="
}' > "$REPORT"

# ---------- Обновление позиции ----------
echo "$CUR_SIZE" > "$STATE_FILE"

# ---------- Отправка письма ----------
if [ -s "$REPORT" ]; then
    SUBJECT="Отчёт о работе веб-сервера ($(date '+%Y-%m-%d %H:%M'))"
    {
        echo "To: $EMAIL"
        echo "Subject: $SUBJECT"
        echo "Content-Type: text/plain; charset=UTF-8"
        echo ""
        cat "$REPORT"
    } | msmtp -t
else
    echo "Отчёт пуст, письмо не отправлено."
fi

rm -f "$REPORT"
flock -u 200

exit 0
EOF
sudo chmod +x /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo chmod +x /usr/local/bin/log_report.sh
sergey@ubuntu290726:~$ sudo tee /usr/local/bin/log_report.sh >/dev/null <<'EOF'
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: /usr/local/bin/log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-i@moohoo.ru}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

REPORT=$(mktemp)

# ---------- Обработка новых строк с корректным парсингом ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++

    # IP (первое поле)
    ip = $1
    if (ip != "") ip_count[ip]++

    # Временная метка [dd/MMM/yyyy:hh:mm:ss +tz]
    if (match($0, /\[([^]]+)\]/)) {
        ts = substr($0, RSTART+1, RLENGTH-2)
        if (min_ts == "" || ts < min_ts) min_ts = ts
        if (max_ts == "" || ts > max_ts) max_ts = ts
    }

    # Извлечение URL из кавычек: "МЕТОД ПУТЬ ПРОТОКОЛ"
    if (match($0, /"([^"]*)"/)) {
        inside = substr($0, RSTART+1, RLENGTH-2)
        # Разбиваем по пробелам
        split(inside, parts, " ")
        # Если есть второй элемент (путь), берём его
        if (length(parts) >= 2) {
            url = parts[2]
        } else {
            # Если всего одно слово – это может быть просто путь без метода
            url = inside
        }
        # Если URL начинается с "/" или это "/" – добавляем, иначе считаем битым
        if (url ~ /^\/.*/ || url == "/") {
            url_count[url]++
        } else {
            # Если URL не похож на путь, возможно это битый запрос
            url_count["(malformed)"]++
        }
    } else {
        # Если нет кавычек (бинарные данные), считаем битым
        url_count["(malformed)"]++
    }

    # Извлечение HTTP-статуса (трёхзначный код после кавычек)
    if (match($0, /"[^"]*" ([0-9]{3}) /)) {
        status = substr($0, RSTART+RLENGTH-4, 3)
    } else {
        # Попытка найти любой трёхзначный код в строке
        if (match($0, /[^0-9]([0-9]{3})[^0-9]/)) {
            status = substr($0, RSTART+1, RLENGTH-2)
        } else {
            status = "???"
        }
    }
    status_count[status]++
    if (status >= 400 && status ~ /^[0-9]+$/) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                К/usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
     rm /home/sergey/log_report.state
sergey@ubuntu290726:~$ sudo chmod +x /usr/local/bin/log_report.sh

sergey@ubuntu290726:~$ sudo tee /usr/local/bin/log_report.sh >/dev/null <<'EOF'
#!/bin/bash
#
# Ежечасный отчёт по логу веб-сервера с отправкой через msmtp
# Использование: /usr/local/bin/log_report.sh [лог-файл] [email]

# ---------- Конфигурация по умолчанию ----------
LOG_FILE="${1:-/var/log/nginx/access.log}"
EMAIL="${2:-i@moohoo.ru}"
STATE_FILE="/home/sergey/log_report.state"
LOCK_FILE="/home/sergey/log_report.lock"

# ---------- Проверка наличия msmtp ----------
if ! command -v msmtp &>/dev/null; then
    echo "Ошибка: msmtp не установлен." >&2
    exit 1
fi

# ---------- Проверка блокировки ----------
exec 200>"$LOCK_FILE"
if ! flock -n 200; then
    echo "Скрипт уже запущен, выход."
    exit 1
fi

# ---------- Проверка лог-файла ----------
if [ ! -f "$LOG_FILE" ]; then
    echo "Ошибка: лог-файл $LOG_FILE не найден." >&2
    exit 1
fi

# ---------- Чтение сохранённой позиции ----------
POS=0
if [ -f "$STATE_FILE" ]; then
    POS=$(cat "$STATE_FILE")
fi

CUR_SIZE=$(stat -c %s "$LOG_FILE" 2>/dev/null)
if [ -z "$CUR_SIZE" ]; then
    echo "Ошибка: не удалось получить размер файла." >&2
    exit 1
fi

if [ "$POS" -gt "$CUR_SIZE" ]; then
    POS=0
fi

if [ "$POS" -eq "$CUR_SIZE" ]; then
    echo "Новых записей в логе нет."
    flock -u 200
    exit 0
fi

REPORT=$(mktemp)

# ---------- Обработка новых строк с корректным парсингом ----------
tail -c "+$((POS + 1))" "$LOG_FILE" 2>/dev/null | awk '
BEGIN {
    split("", ip_count)
    split("", url_count)
    split("", status_count)
    split("", error_count)
    min_ts = ""
    max_ts = ""
    total = 0
}

{
    total++

    # IP (первое поле)
    ip = $1
    if (ip != "") ip_count[ip]++

    # Временная метка [dd/MMM/yyyy:hh:mm:ss +tz]
    if (match($0, /\[([^]]+)\]/)) {
        ts = substr($0, RSTART+1, RLENGTH-2)
        if (min_ts == "" || ts < min_ts) min_ts = ts
        if (max_ts == "" || ts > max_ts) max_ts = ts
    }

    # Извлечение URL из кавычек: "МЕТОД ПУТЬ ПРОТОКОЛ"
    if (match($0, /"([^"]*)"/)) {
        inside = substr($0, RSTART+1, RLENGTH-2)
        # Разбиваем по пробелам
        split(inside, parts, " ")
        # Если есть второй элемент (путь), берём его
        if (length(parts) >= 2) {
            url = parts[2]
        } else {
            # Если всего одно слово – это может быть просто путь без метода
            url = inside
        }
        # Если URL начинается с "/" или это "/" – добавляем, иначе считаем битым
        if (url ~ /^\/.*/ || url == "/") {
            url_count[url]++
        } else {
            # Если URL не похож на путь, возможно это битый запрос
            url_count["(malformed)"]++
        }
    } else {
        # Если нет кавычек (бинарные данные), считаем битым
        url_count["(malformed)"]++
    }

    # Извлечение HTTP-статуса (трёхзначный код после кавычек)
    if (match($0, /"[^"]*" ([0-9]{3}) /)) {
        status = substr($0, RSTART+RLENGTH-4, 3)
    } else {
        # Попытка найти любой трёхзначный код в строке
        if (match($0, /[^0-9]([0-9]{3})[^0-9]/)) {
            status = substr($0, RSTART+1, RLENGTH-2)
        } else {
            status = "???"
        }
    }
    status_count[status]++
    if (status >= 400 && status ~ /^[0-9]+$/) {
        error_count[status]++
    }
}

END {
    print "===================================================="
    print "           ОТЧЁТ О РАБОТЕ ВЕБ-СЕРВЕРА"
    print "===================================================="
    print ""
    print "Обработанный временной диапазон:"
    print "  с " min_ts
    print "  по " max_ts
    print ""
    print "Всего новых записей: " total
    print ""
    print "--- ТОП-10 IP-адресов по числу запросов ---"
    PROCINFO["sorted_in"] = "@val_num_desc"
    cnt = 0
    for (i in ip_count) {
        if (i != "") {
            printf "  %-20s %8d\n", i, ip_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- ТОП-10 URL по числу запросов ---"
    cnt = 0
    for (i in url_count) {
        if (i != "") {
            printf "  %-50s %8d\n", i, url_count[i]
            cnt++
            if (cnt >= 10) break
        }
    }
    print ""
    print "--- Распределение HTTP-кодов ответов ---"
    for (i in status_count) {
        printf "  %-10s %8d\n", i, status_count[i]
    }
    print ""
    print "--- Ошибки (коды ответа >= 400) ---"
    if (length(error_count) > 0) {
        for (i in error_count) {
            printf "  Код %-5s : %d раз(а)\n", i, error_count[i]
        }
    } else {
        print "  Ошибок не обнаружено."
    }
    print ""
    print "===================================================="
    print "                К/usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru

     /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sergey@ubuntu290726:~$ sudo crontab -e
sudo: 'crontab': command not found
sergey@ubuntu290726:~$ sudo crontab -e
sudo: 'crontab': command not found
sergey@ubuntu290726:~$ sudo apt install crontab
Error: Unable to locate package crontab
sergey@ubuntu290726:~$ sudo apt install cron
The following packages were automatically installed and are no longer required:
  linux-headers-7.0.0-14          linux-image-unsigned-7.0.0-14-generic    linux-modules-7.0.0-14-generic  linux-tools-7.0.0-14-generic
  linux-headers-7.0.0-14-generic  linux-main-modules-zfs-7.0.0-14-generic  linux-tools-7.0.0-14
Use 'sudo apt autoremove' to remove them.

Installing:
  cron

Installing dependencies:
  cron-daemon-common

Suggested packages:
  anacron  logrotate  checksecurity  supercat  bat  default-mta  | mail-transport-agent

Summary:
  Upgrading: 0, Installing: 2, Removing: 0, Not Upgrading: 38
  Download size: 104 kB
  Space needed: 296 kB / 11.3 GB available

Continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu resolute/main amd64 cron-daemon-common all 3.0pl1-200ubuntu1 [15.7 kB]
Get:2 http://archive.ubuntu.com/ubuntu resolute/main amd64 cron amd64 3.0pl1-200ubuntu1 [88.6 kB]
Fetched 104 kB in 1s (203 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79, <STDIN> line 2.)
debconf: falling back to frontend: Readline
Selecting previously unselected package cron-daemon-common.
(Reading database ... 128459 files and directories currently installed.)
Preparing to unpack .../cron-daemon-common_3.0pl1-200ubuntu1_all.deb ...
Unpacking cron-daemon-common (3.0pl1-200ubuntu1) ...
Setting up cron-daemon-common (3.0pl1-200ubuntu1) ...
Creating group 'crontab' with GID 986.
Selecting previously unselected package cron.
(Reading database ... 128478 files and directories currently installed.)
Preparing to unpack .../cron_3.0pl1-200ubuntu1_amd64.deb ...
Unpacking cron (3.0pl1-200ubuntu1) ...
Setting up cron (3.0pl1-200ubuntu1) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/cron.service' → '/usr/lib/systemd/system/cron.service'.
Scanning processes...                                                                                                                                          
Scanning linux images...                                                                                                                                       

Running kernel seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
sergey@ubuntu290726:~$ sudo crontab -e
no crontab for root - using an empty one
Select an editor.  To change later, run select-editor again.
  1. /bin/nano        <---- easiest
  2. /usr/bin/mcedit

Choose 1-2 [1]: 1
crontab: installing new crontab
sergey@ubuntu290726:~$ sudo crontab -l
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
0 * * * * /usr/local/bin/log_report.sh /var/log/nginx/access.log i@moohoo.ru
sergey@ubuntu290726:~$ 

