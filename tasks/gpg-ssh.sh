#!/bin/bash

KEYGRIP="$1"

if [[ -z "$KEYGRIP" ]]; then
  echo 'Specify keygrip of auth key'
fi

echo enable-ssh-support >> $HOME/.gnupg/gpg-agent.conf
echo "$KEYGRIP" >> ~/.gnupg/sshcontrol

agent_sock=$(gpgconf --list-dirs agent-socket)
export GPG_AGENT_INFO=${agent_sock}:0:1
if [ -n "$(gpgconf --list-options gpg-agent | \
      awk -F: '/^enable-ssh-support:/{ print $10 }')" ]; then
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
fi

sudo ln -s $DOTFILES/etc/X11/Xsession.d/90gpg-agent /etc/X11/Xsession.d/90gpg-agent
