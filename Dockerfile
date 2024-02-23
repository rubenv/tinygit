FROM alpine:3.18

RUN apk add --update git openssh-server && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /data/git && \
    adduser -D -s /usr/bin/git-shell -h /data/git git && \
    passwd -u git && \
    echo -n '' > /etc/motd

ADD start.sh /

VOLUME /data

CMD ["/bin/sh", "/start.sh"]
