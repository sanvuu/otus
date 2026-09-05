# Используем легковесный образ nginx на базе alpine
FROM nginx:alpine

# Копируем наш index.html внутрь контейнера, заменяя дефолтный файл nginx
COPY index.html /usr/share/nginx/html/index.html

# Экспонируем 80 порт
EXPOSE 80
