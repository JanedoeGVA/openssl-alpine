FROM alpine

RUN apk add --no-cache openssl

COPY script.sh /

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]