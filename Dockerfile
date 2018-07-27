FROM alpine

RUN apk add --update openssl && \
rm -rf /var/cache/apk*

COPY docker-entrypoint.sh /

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

ENTRYPOINT ["/docker-entrypoint.sh"]