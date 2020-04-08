# phlax/matomo Docker image


Adds health-check from https://github.com/renatomefi/php-fpm-healthcheck to the `matomo:fpm-alpine` docker image

Resulting image is available from dockerhub:

```bash

docker run phlax/matomo

```

The following provides an example of using this image with `docker-compose` (it will not give you a working `matomo` stack)

```yaml
version: "2.1"
services:

  matomo:
    image: phlax/matomo
    healthcheck:
      interval: 10s
      retries: 20
      test: php-fpm-healthcheck

  http:
    image: nginx
    depends_on:
      matomo:
        condition: service_healthy

```
