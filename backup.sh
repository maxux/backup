#!/bin/bash
SSHKEY="/home/backup/.ssh/id_rsa"
RSYNC="/usr/bin/rsync"
LOGGER="logger -i -t"
HOSTNAME="$(hostname -s)"
REMOTE="backup@arya.maxux.net"
SOURCE="/home/backup/"

$RSYNC -avhLz --delete --ignore-errors -e "ssh -i $SSHKEY" $SOURCE $REMOTE:$HOSTNAME/ 2>&1 | $LOGGER backup

