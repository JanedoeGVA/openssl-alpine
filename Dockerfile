FROM alpine

RUN apk add --update openssl && \
rm -rf /var/cache/apk/*

COPY script.sh /script/script.sh

RUN chmod +x /script/script.sh

CMD tail -f /dev/null

CMD ["./script/script.sh"]
