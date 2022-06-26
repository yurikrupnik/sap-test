FROM openresty/openresty:1.21.4.1-0-buster-fat AS builder

# Todo via config maps volumes - no need to rebuild image if changing config.
# docker run --name nginx-container --rm --net=host   -v /home/core/nginx/nginx.conf:/etc/nginx/nginx.conf nginx
COPY ./nginx-config/default.conf /etc/nginx/conf.d/default.conf

ENV PORT=80
EXPOSE ${PORT}

CMD ["nginx", "-g", "daemon off;"]
