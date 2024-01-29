FROM alpine:latest

RUN apk add --no-cache nginx nginx-mod-http-brotli

EXPOSE 80
STOPSIGNAL SIGTERM
VOLUME /app

COPY nginx.conf /etc/nginx/http.d/default.conf

CMD ["nginx", "-g", "daemon off;"]