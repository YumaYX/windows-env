#!/usr/bin/bash

mkdir -p ~/.ssh
cat <<'CONFIGEOF' > ~/.ssh/config
Host GitHub
    HostName github.com
    IdentityFile ~/.ssh/id_rsa
    TCPKeepAlive yes
    IdentitiesOnly yes
    User git
CONFIGEOF

cp -fv /vagrant/id_rsa ~/.ssh/
chown $(whoami). ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa
