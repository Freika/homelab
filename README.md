# Homelab

This is a collection of scripts and configuration files that I use to manage my homelab. Some of them might be also used for my personal projects to setup staging and production servers.


## Playbooks

- `make portainer` will install Portainer on the server.
- `make docker` will install Docker on the server.
- `make dokku` will install Dokku on the server. It will also add 1GB swap file.
- `make dokku_new_app` will create a new Dokku app on the server. It will also create a postgres database for the app, redis and link them to the app.
- `make dokku_setup_backups` will setup backups for the app. It will create a cron job that will run every day at 3am and will create a backup of the the database. The backups will be uploaded to AWS S3.
- `make dokku_add_domain` will add a domain to the app.
