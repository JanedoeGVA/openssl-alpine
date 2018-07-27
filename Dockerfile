FROM alpine

RUN apk add --update openssl && \
apk add --no-cache bash && \
rm -rf /var/cache/apk*

COPY docker-entrypoint.sh /run/script/docker-entrypoint.sh

RUN ["chmod", "+x", "/run/script/docker-entrypoint.sh"]

ENTRYPOINT ["/run/script/docker-entrypoint.sh"]