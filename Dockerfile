FROM alpine

RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache openssl

COPY script.sh /

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]