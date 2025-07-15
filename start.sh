#!/bin/bash
set -e

# Soket dosyası için gerekli olan /run/php dizinini oluştur ve sahipliğini ata.
mkdir -p /run/php
chown -R www-data:www-data /run/php

# PHP-FPM'i, projemizdeki özel yapılandırma dosyasını kullanarak başlat.
php-fpm -y php-fpm.conf --daemonize

# Nginx'i ön planda başlat.
echo "Nginx başlatılıyor..."
nginx -g "daemon off;" 