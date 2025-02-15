#!/bin/sh

echo "Delete all files from sFTP..."

rm -rf /sftp_server/uploads/*
rm -rf /sftp_server/downloads/*

echo "Finished deleting files!"
