#!/usr/bin/bash

cat <<'CONFIGEOF' > ~/.ssh/config
Host GitHub
    HostName github.com
    IdentityFile /vagrant/id_rsa
    TCPKeepAlive yes
    IdentitiesOnly yes
    User git
CONFIGEOF

cp -v /vagrant/id_rsa ~/.ssh/
chown yuma. ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa

