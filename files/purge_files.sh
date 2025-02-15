#!/usr/bin/sh

if [ -z "${MOCK_MODE}" ] || [ "${MOCK_MODE}" != "true" ]; then
  exit 0;
fi

echo "Delete all files from sFTP..."

rm -rf /sftp_server/uploads/*
rm -rf /sftp_server/downloads/*

echo "Finished deleting files!"
