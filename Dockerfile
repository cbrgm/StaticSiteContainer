FROM nginx:alpine

LABEL title="Tiny Dockerized nginx server for static web content" \
  maintainer="Christian Bargmann" \
  version="1.0" \
  url1="https://chris@cbrgm.net" \
  url2="http://github.com/cbrgm/StaticSiteContainer"

COPY default.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
