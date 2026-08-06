sergey@ubuntu290726:~$ sudo cat /usr/local/bin/log_report.sh 
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
sergey@ubuntu290726:~$ 

