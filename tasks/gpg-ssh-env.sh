#!/bin/bash

agent_sock=$(gpgconf --list-dirs agent-socket)
export GPG_AGENT_INFO=${agent_sock}:0:1
if [ -n "$(gpgconf --list-options gpg-agent | \
      awk -F: '/^enable-ssh-support:/{ print $10 }')" ]; then
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
fi
