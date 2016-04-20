#!/bin/bash

XENIAL=$(docker run -tid -e AUTHORIZED_KEYS="`cat ~/.ssh/id_rsa.pub`" jvrplmlmn/ubuntu:xenial)
XENIAL_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${XENIAL})

echo "=============================================================="
echo "This Xenial Docker with sshd is running with IP: ${XENIAL_IP}"
echo "You can connect with:"
echo ""
echo "ssh -o \"StrictHostKeyChecking no\" -o \"UserKnownHostsFile=/dev/null\" root@${XENIAL_IP}"
echo "=============================================================="
