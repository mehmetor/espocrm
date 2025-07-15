#!/bin/bash
set -e

# PHP-FPM (PHP motoru) servisini arka planda başlat.
php-fpm &

# Nginx'i ön planda başlat. Bu, Railway'in uygulamanın çalıştığını anlaması için gereklidir.
# Nginx, /etc/nginx/conf.d/default.conf dosyasındaki yapılandırmamızı kullanacaktır.
echo "Nginx başlatılıyor..."
nginx -g "daemon off;" 