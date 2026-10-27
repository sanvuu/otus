#!/bin/bash
TARGET_IP=$1
shift
for PORT in "$@"; do
    echo "Отправка пакета на порт: $PORT"
    nc -z -w 1 $TARGET_IP $PORT
done
