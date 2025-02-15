FROM ubuntu:24.04

# Update packages and install ssh
RUN apt-get update && apt-get install -y ssh locales

# Set locales to de_AT
RUN rm -rf /var/lib/apt/lists/*
RUN localedef -i de_AT -c -f UTF-8 -A /usr/share/locale/locale.alias de_AT.UTF-8
ENV LANG de_AT.utf8

# Create necessary sshd file
RUN mkdir /var/run/sshd

# Configure sFTP user
RUN useradd -d /home/sftp_user sftp_user 
RUN echo "sftp_user:change_me" | chpasswd

# Create sFTP filepaths
RUN mkdir -p /sftp_server/uploads
RUN mkdir -p /sftp_server/downloads
RUN chmod 755 /sftp_server
RUN chown sftp_user:sftp_user /sftp_server/uploads
RUN chown sftp_user:sftp_user /sftp_server/downloads

# Copy necessary files
COPY files/sshd_config /etc/ssh/sshd_config
RUN chmod 600 /etc/ssh/sshd_config
COPY files/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 22
ENTRYPOINT [ "/docker-entrypoint.sh" ]
