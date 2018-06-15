[![nodesource/node](http://dockeri.co/image/spawnia/php7.1-fpm)](https://registry.hub.docker.com/u/spawnia/php7.1-fpm/)

### Versions
* Minimal image for production `latest`, `1.3.0`
* Developer version `dev`, `dev-1.3.0`

### Usage

When using the developer version, it is advised to run the interactive shell as non-root.
So when connecting either via `docker run` or `docker exec`, add the
flag `-u me` to run as UserId 1000 with the GroupId 82.
