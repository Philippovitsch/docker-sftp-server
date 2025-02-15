#!/usr/bin/sh

# Change sftp_user password
echo "sftp_user:${SFTP_PASSWORD}" | chpasswd

# Run ssh daemon
/usr/sbin/sshd -D -e
