# Docker sFTP Server

This application is for learning purposes only. It provides a way to build a Docker image for hosting a sFTP server.

# Run

Clone the repository:
```bash
git clone git@github.com:Philippovitsch/docker-sftp-server.git
```

Navigate to repo folder:
```bash
cd docker-sftp-server
```

Create `docker-compose.override.yml`:
```bash
cp docker-compose.override.yml.example docker-compose.override.yml
```

Build and start the docker container:
```bash
docker compose up -d
```

# Default user

- User: `sftp_user`
- Password: `sftp_user`

If you want to change the password of `sftp_user`, provide a password in your `docker-compose.override.yml`:

```yml
SFTP_PASSWORD: "YOUR_PASSWORD_GOES_HERE"
```

# Access sFTP server

- Host: `127.0.0.1`
- Port: `22`
- Protocol: `SFTP - SSH File Transfer Protocol`
