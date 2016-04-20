#!/bin/bash

mkdir -p /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

if [ "${AUTHORIZED_KEYS}" == "**USE_YOUR_OWN_KEY**" ]; then
  echo "Oops, looks like you need to set the AUTHORIZED_KEYS environment variable."
  echo "Exiting..."
  exit
fi

echo "${AUTHORIZED_KEYS}" >> /root/.ssh/authorized_keys

exec /usr/sbin/sshd -D
