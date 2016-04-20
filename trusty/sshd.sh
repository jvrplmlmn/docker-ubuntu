#!/bin/bash

TRUSTY=$(docker run -tid -e AUTHORIZED_KEYS="`cat ~/.ssh/id_rsa.pub`" jvrplmlmn/ubuntu:trusty)
TRUSTY_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${TRUSTY})

echo "=============================================================="
echo "This Trusty Docker with sshd is running with IP: ${TRUSTY_IP}"
echo "You can connect with:"
echo ""
echo "ssh -o \"StrictHostKeyChecking no\" -o \"UserKnownHostsFile=/dev/null\" root@${TRUSTY_IP}"
echo "=============================================================="
