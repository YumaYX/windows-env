#!/usr/bin/bash

cat <<'CONFIGEOF' > ~/.ssh/config
Host GitHub
    HostName github.com
    IdentityFile ~/.ssh/id_rsa
    TCPKeepAlive yes
    IdentitiesOnly yes
    User git
CONFIGEOF

cp -fv /vagrant/id_rsa ~/.ssh/
chown yuma. ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa

