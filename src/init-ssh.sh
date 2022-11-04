#!/bin/bash

mkdir -p ~/.ssh
echo "-----END OPENSSH PRIVATE KEY-----" > ~/.ssh/id_ed25519
echo $SSH_PRIVATE_KEY >> ~/.ssh/id_ed25519
echo "-----END OPENSSH PRIVATE KEY-----" >> ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519

ssh-keyscan github.com > ~/.ssh/known_hosts