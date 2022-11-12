#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

if ! variable_exists "$PERSONAL_KEYGRIP"; then
  echo 'Specify PERSONAL_KEYGRIP of auth key'
  exit
fi

if ! variable_exists "$WORK_KEYGRIP"; then
  echo 'Specify WORK_KEYGRIP of auth key'
  exit
fi

if ! variable_exists "$SSH_DIR"; then
  echo 'Specify SSH_DIR with keys and config'
  exit
fi

keygrips=("$PERSONAL_KEYGRIP" "$WORK_KEYGRIP")

if file_contains $HOME/.gnupg/gpg-agent.conf "enable-ssh-support"; then
  echo 'enable-ssh-support already added in gpg-agent.conf'
else
  echo enable-ssh-support >> $HOME/.gnupg/gpg-agent.conf
  echo 'enable-ssh-support added to gpg-agent.conf'
fi

for key in ${keygrips[@]}; do
  if file_contains $HOME/.gnupg/sshcontrol "$key"; then
    echo "$key already added in sshcontrol"
  else
    echo "$key" >> ~/.gnupg/sshcontrol
    echo "$key added to sshcontrol"
  fi
done

source ./tasks/gpg-ssh-env.sh

rm -rf $HOME/.ssh && cp -r $SSH_DIR $HOME
echo 'SSH keys and config are copied'

