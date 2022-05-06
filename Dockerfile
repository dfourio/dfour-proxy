FROM openresty/openresty:1.19.3.1-alpine-fat

COPY etc/nginx/templates /etc/nginx/templates/
COPY etc/nginx/conf.d/proxy_conf.inc /etc/nginx/conf.d/proxy_conf.inc

ENTRYPOINT [ "/usr/local/openresty/bin/openresty", "-g", "daemon off;" ]

EXPOSE 8000