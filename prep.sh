#!/usr/bin/bash

cat <<'CONFIGEOF' > ~/.ssh/config
Host GitHub
    HostName github.com
    IdentityFile /vagrant/id_rsa
    TCPKeepAlive yes
    IdentitiesOnly yes
    User git
CONFIGEOF

chmod 400 /vagrant/id_rsa
