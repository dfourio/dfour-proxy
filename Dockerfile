FROM nginx:1.21

COPY etc/nginx/templates /etc/nginx/templates/
COPY etc/nginx/conf.d/proxy_conf.inc /etc/nginx/conf.d/proxy_conf.inc

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

EXPOSE 8000