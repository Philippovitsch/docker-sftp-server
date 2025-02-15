#!/usr/bin/sh

# Change sftp_user password if provided
if [ -n "${SFTP_PASSWORD}" ]; then
  echo "Setting provided sFTP password..."
  echo "sftp_user:${SFTP_PASSWORD}" | chpasswd
fi

# Run ssh daemon
echo "Starting ssh server..."
/usr/sbin/sshd -D -e
