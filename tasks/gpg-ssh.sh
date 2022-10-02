#!/bin/bash

if [[ -z "$PERSONAL_KEYGRIP" ]]; then
  echo 'Specify PERSONAL_KEYGRIP of auth key'
  exit
fi

if [[ -z "$WORK_KEYGRIP" ]]; then
  echo 'Specify WORK_KEYGRIP of auth key'
  exit
fi

keygrips=("$PERSONAL_KEYGRIP" "$WORK_KEYGRIP")

if grep -q "enable-ssh-support" $HOME/.gnupg/gpg-agent.conf; then
  echo 'enable-ssh-support already added in gpg-agent.conf'
else
  echo enable-ssh-support >> $HOME/.gnupg/gpg-agent.conf
  echo 'enable-ssh-support added to gpg-agent.conf'
fi

for key in ${keygrips[@]}; do
  if grep -q "$key" $HOME/.gnupg/sshcontrol then
    echo "$key already added in sshcontrol"
  else
    echo "$key" >> ~/.gnupg/sshcontrol
    echo "$key added to sshcontrol"
  fi
done

source ./tasks/gpg-ssh-env.sh

sudo rm -f /etc/X11/Xsession.d/90gpg-agent && sudo ln -s $DOTFILES/etc/X11/Xsession.d/90gpg-agent /etc/X11/Xsession.d/90gpg-agent
