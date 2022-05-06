FROM openresty/openresty:1.19.3.1-alpine-fat

COPY etc/nginx/conf.d/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY etc/nginx/conf.d/proxy_conf.inc /etc/nginx/conf.d/proxy_conf.inc

ENTRYPOINT [ "openresty" ]

EXPOSE 8000