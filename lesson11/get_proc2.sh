#!/bin/bash

# Выводим шапку таблицы
printf "%-10s %-10s %-25s %s\n" "PID" "PPID" "СОСТОЯНИЕ" "ИМЯ ПРОЦЕССА"
echo "--------------------------------------------------------------------------------"

# Цикл по всем цифровым папкам в /proc
for proc_dir in /proc/[0-9]*/; do
    if [ -f "${proc_dir}status" ]; then

        # Используем grep -oP и регулярные выражения \K (сбросить совпадение до этой точки)
        pid=$(grep '^Pid:' "${proc_dir}status" | awk '{print $2}')
        ppid=$(grep '^PPid:' "${proc_dir}status" | awk '{print $2}')

        # Вытаскиваем всё, что идет после State: (включая текстовое пояснение в скобках)
        state=$(grep '^State:' "${proc_dir}status" | awk '{print $2, $3}')

        # Вытаскиваем имя процесса
        name=$(grep '^Name:' "${proc_dir}status" | awk '{print $2}')

        # Выводим красивую ровную строчку в таблицу
        printf "%-10s %-10s %-25s %s\n" "$pid" "$ppid" "$state" "$name"
    fi
done

