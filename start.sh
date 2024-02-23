#!/bin/sh

set -ex

mkdir -p /data/keys /data/git

if [ ! -f /data/keys/ssh_host_ed25519_key ]; then
    ssh-keygen -A
    cp /etc/ssh/ssh_host_*_key /data/keys
fi

cp /data/keys/ssh_host_*_key /etc/ssh/

mkdir -p /data/git/.ssh/
cat /data/*.pub > /data/git/.ssh/authorized_keys
chmod 711 /data/git
chmod 711 /data/git/.ssh
chmod 644 /data/git/.ssh/authorized_keys

exec /usr/sbin/sshd -D
