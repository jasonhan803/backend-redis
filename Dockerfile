FROM redis:latest

MAINTAINER Mahmoud Zalt <mahmoud@zalt.me>

RUN mkdir -p /usr/local/etc/redis
COPY redis.conf /usr/local/etc/redis/redis.conf

CMD mkdir /data

VOLUME /data

EXPOSE 6379

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
