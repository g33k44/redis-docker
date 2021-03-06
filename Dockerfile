FROM redis:5.0.4 
WORKDIR /var/lib/redis
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "--requirepass \"$REDIS_PASSWORD\"" ]