Создать свой RPM пакет

● Для данного задания нам понадобятся следующие установленные пакеты:
[root@packages ~]# dnf install -y wget rpmdevtools rpm-build createrepo \
 yum-utils cmake gcc git nano

● Для примера возьмем пакет Nginx и соберем его с дополнительным модулем ngx_broli
● Загрузим SRPM пакет Nginx для дальнейшей работы над ним:
[root@packages ~]# mkdir rpm && cd rpm
[root@packages ~]# yumdownloader --source nginx

● При установке такого пакета в домашней директории создается дерево каталогов для сборки, далее поставим все зависимости для сборки пакета Nginx:
[root@packages ~]# rpm -Uvh nginx*.src.rpm
[root@packages ~]# yum-builddep nginx

● Также нужно скачать исходный код модуля ngx_brotli — он
потребуется при сборке:
[root@packages ~]# cd /root
[root@packages ~]# git clone --recurse-submodules -j8 \
https://github.com/google/ngx_brotli
[root@packages ~]# cd ngx_brotli/deps/brotli
[root@packages ~]# mkdir out && cd out

● Собираем модуль ngx_brotli:
[root@packages ~]# cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DCMAKE_C_FLAGS="-Ofast -m64 -march=native -mtune=native -flto -funroll-loops -ffunction-sections -fdata-sections -Wl,--gc-sections" -DCMAKE_CXX_FLAGS="-Ofast -m64 -march=native -mtune=native -flto -funroll-loops -ffunction-sections -fdata-sections -Wl,--gc-sections" -DCMAKE_INSTALL_PREFIX=./installed ..
[root@packages ~]# cmake --build . --config Release -j 2 --target brotlienc
[root@packages ~]# cd ../../../..

● Нужно поправить сам spec файл, чтобы Nginx собирался с необходимыми нам опциями: находим секцию с параметрами configure (до условий if) и добавляем указание на модуль (не забудьте указать завершающий обратный слэш):
--add-module=/root/ngx_brotli \

● По этой ссылке можно посмотреть все доступные опции для сборки.

● Теперь можно приступить к сборке RPM пакета:
[root@packages ~]# cd ~/rpmbuild/SPECS/
[root@packages ~]# rpmbuild -ba nginx.spec -D 'debug_package %{nil}'
...
Executing(%license): /bin/sh -e /var/tmp/rpm-tmp.rDDPoo
+ umask 022
+ cd /root/rpmbuild/BUILD
+ cd nginx-1.20.1
+ LICENSEDIR=/root/rpmbuild/BUILDROOT/nginx-1.20.1-14.el9.1.alma.1.x86_64/usr/share/licenses/nginx-core
+ export LC_ALL=C
+ LC_ALL=C
+ export LICENSEDIR
+ /usr/bin/mkdir -p /root/rpmbuild/BUILDROOT/nginx-1.20.1-14.el9.1.alma.1.x86_64/usr/share/licenses/nginx-core
+ cp -pr LICENSE /root/rpmbuild/BUILDROOT/nginx-1.20.1-14.el9.1.alma.1.x86_64/usr/share/licenses/nginx-core
+ RPM_EC=0
++ jobs -p
+ exit 0

● Убедимся, что пакеты создались:
[root@packages ~]# ll rpmbuild/RPMS/x86_64/
…
-rw-r--r--. 1 root root   36369 May  7 09:34 nginx-1.20.1-14.el9.1.alma.1.x86_64.rpm
…

● Копируем пакеты в общий каталог:
[root@packages ~]# cp ~/rpmbuild/RPMS/noarch/* ~/rpmbuild/RPMS/x86_64/
[root@packages ~]# cd ~/rpmbuild/RPMS/x86_64

● Теперь можно установить наш пакет и убедиться, что nginx работает:

[root@packages ~]# dnf localinstall *.rpm
[root@packages ~]# systemctl start nginx
[root@packages ~]# systemctl status nginx

● Далее мы будем использовать его для доступа к своему репозиторию.

Создать свой репозиторий и разместить там ранее собранный RPM

● Теперь приступим к созданию своего репозитория. Директория для статики у Nginx по умолчанию /usr/share/nginx/html. Создадим там каталог repo:

[root@packages ~]# mkdir /usr/share/nginx/html/repo

● Копируем туда наши собранные RPM-пакеты:

[root@packages ~]# cp ~/rpmbuild/RPMS/x86_64/*.rpm /usr/share/nginx/html/repo/

● Инициализируем репозиторий командой:
[root@packages ~]# createrepo /usr/share/nginx/html/repo/
Directory walk started
Directory walk done - 10 packages < Видим, что в репозитории 10 пакетов
Temporary output repo path: /usr/share/nginx/html/repo/.repodata/
Preparing sqlite DBs < Обратите внимание что используется sqlite
Pool started (with 5 workers)
Pool finished

● Для прозрачности настроим в NGINX доступ к листингу каталога. В файле /etc/nginx/nginx.conf в блоке server добавим следующие директивы:

	index index.html index.htm;
	autoindex on;

● Проверяем синтаксис и перезапускаем NGINX:
[root@packages ~]# nginx -t
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
[root@packages ~]# nginx -s reload

● Теперь ради интереса можно посмотреть в браузере или с помощью curl:
[root@packages ~]# lynx http://localhost/repo/
[root@packages ~]# curl -a http://localhost/repo/

● Все готово для того, чтобы протестировать репозиторий.
● Добавим его в /etc/yum.repos.d:
[root@packages ~]# cat >> /etc/yum.repos.d/otus.repo << EOF
[otus]
name=otus-linux
baseurl=http://localhost/repo
gpgcheck=0
enabled=1
EOF

● Убедимся, что репозиторий подключился и посмотрим, что в нем есть:
[root@packages ~]# dnf repolist enabled | grep otus
otus otus-linux 2

● Добавим пакет в наш репозиторий:
[root@packages ~]# cd /usr/share/nginx/html/repo/
[root@packages ~]# wget https://repo.percona.com/yum/percona-release-latest.noarch.rpm

● Обновим список пакетов в репозитории:
[root@packages ~]# createrepo /usr/share/nginx/html/repo/
[root@packages ~]# dnf makecache
[root@packages ~]# dnf list | grep otus
percona-release.noarch 	1.0-27 		otus

● Так как Nginx у нас уже стоит, установим репозиторий percona-release:

[root@packages ~]# dnf install -y percona-release.noarch
