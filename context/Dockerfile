FROM matomo:fpm-alpine

# Required software
RUN apk add --no-cache fcgi

# Enable php fpm status page
RUN set -xe && echo "pm.status_path = /status" >> /usr/local/etc/php-fpm.d/zz-docker.conf

# Grab the healthcheck script
RUN wget -O /usr/local/bin/php-fpm-healthcheck https://raw.githubusercontent.com/renatomefi/php-fpm-healthcheck/master/php-fpm-healthcheck \
      && chmod +x /usr/local/bin/php-fpm-healthcheck
