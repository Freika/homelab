# Homelab

This is a collection of scripts and configuration files that I use to manage my homelab. Some of them might also be used for my personal projects to setup staging and production servers.

# Disclaimer

Some of the scripts might be unsafe. I'm aware one is not supposed to operate as `root` user under no circumstances. Use these at your own risk.

## Playbooks


### Homelab

- `make docker` will install Docker on the server.
- `make portainer` will install Portainer on the server.
- `make backup` will create an automated config for backups. It will create a cron job that will run every day at 3am and will create a backup of the immich db and photos. The backups will be uploaded to Backblaze B2. Check inventory.txt for more info and variables.

### Dokku

- `make dokku` will install Dokku on the server. It will also add 1GB swap file.
- `make dokku_new_app` will create a new Dokku app on the server. It will also create a postgres database for the app, redis and link them to the app.
- `make dokku_setup_backups` will set up backups for the app. It will create a cron job that will run every day at 3am and will create a backup of the database. The backups will be uploaded to AWS S3.
- `make dokku_add_domain` will add a domain to the app.
- `make dokku_add_ssl` will add SSL to the app.

#### Adding certificates

To add certificates to the app, you need to follow some steps before running the `make dokku_add_ssl` command.

1. Add your domain to Cloudflare. You need to change the nameservers on your DNS provider (probably just where you have bought your domain). Create an account on Cloudflare and it will show you a step-by-step guide on how to do that (great onboarding by the way).
2. Create certificates for your domain. On Cloudflare, open SSL/TLS -> Origin Server menu and press Create Certificate.
3. Create two files in tmp folder: {{domain_name}}.crt and {{domain_name}}.key. Copy the content of the certificate and the private key in the files.
4. Run `make dokku_add_ssl` command.
5. Now set your domain SSL/TLS to Full on Cloudflare.
6. You're beautiful!

### Todo:

- https://ubuntu.com/tutorials/install-and-configure-samba#2-installing-samba
