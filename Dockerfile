FROM alpine

COPY docker-entrypoint.sh /run/script/docker-entrypoint.sh

RUN ["chmod", "+x", "/run/script/docker-entrypoint.sh"]

ENTRYPOINT ["/run/script/docker-entrypoint.sh"]
