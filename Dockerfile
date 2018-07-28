FROM alpine

COPY script.sh /script/script.sh

RUN chmod +x /script/script.sh

CMD ["./script/script.sh"]
