# Homelab

This is a collection of scripts and configuration files that I use to manage my homelab. Some of them might be also used for my personal projects to setup staging and production servers.

# Disclaimer

Some of scripts might be unsafe. I'm aware one not supposed to operate as `root` user under no circumstances. Use these on your own risk.

## Playbooks

- `make portainer` will install Portainer on the server.
- `make docker` will install Docker on the server.
- `make dokku` will install Dokku on the server. It will also add 1GB swap file.
- `make dokku_new_app` will create a new Dokku app on the server. It will also create a postgres database for the app, redis and link them to the app.
- `make dokku_setup_backups` will setup backups for the app. It will create a cron job that will run every day at 3am and will create a backup of the the database. The backups will be uploaded to AWS S3.
- `make dokku_add_domain` will add a domain to the app.
- `make dokku_setup_certificates` will add SSL to the app.

### Adding certificates

To add certificates to the app, you need follow some steps before running the `make dokku_setup_certificates` command.

1. Add your domain to Cloudflare. You need to change the nameservers on your DNS provider (probably just where you have bought your domain). Create an account on Cloudflare and it will show you a step-by-step guide on how to do that (great onboarding by the way).
2. Create certificates for your domain. On Cloudflare open SSL/TLS -> Origin Server menu and press Create Certificate.
3. Create two files in tmp folder: {{domain_name}}.crt and {{domain_name}}.key. Copy the content of the certificate and the private key in the files.
4. Run `make dokku_setup_certificates` command.
5. Now set your domain SSL/TLS to Full on Cloudflare.
6. You're beautiful!
