###

setup_homelab_production:
	ansible-playbook -Kk -i inventory.txt playbooks/homelab_production.yml

###

install_portainer:
	ansible-playbook -k -K playbooks/install_portainer.yml

install_docker:
	ansible-playbook -k -K playbooks/install_docker.yml

install_dokku:
	ansible-playbook -k -K playbooks/install_dokku.yml

create_dokku_app:
	ansible-playbook -k -K playbooks/create_dokku_app.yml

setup_dokku_backups:
	ansible-playbook -k -K playbooks/setup_dokku_backups.yml

add_dokku_domain:
	ansible-playbook -k -K playbooks/add_dokku_domain.yml

add_dokku_ssl:
	ansible-playbook -k -K playbooks/dokku_setup_certificates.yml

octoprint:
	ansible-playbook -k -K octoprint.yml

samba:
	ansible-playbook -k -K samba.yml

backup:
	ansible-playbook -k -K backup.yml

install_immich:
	ansible-playbook -k -K playbooks/install_immich.yml -i inventory.txt

install_paperless:
	ansible-playbook -k -K playbooks/paperless-ngx.yml -i inventory.txt

install_go:
	ansible-playbook -k -K playbooks/install_go.yml

install_runitor:
	ansible-playbook -k -K playbooks/install_runitor.yml

install_actual:
	ansible-playbook -k -K playbooks/install_actual.yml -i inventory.txt

install_traefik:
	ansible-playbook -k -K playbooks/install_traefik.yml -i inventory.txt

install_jellyfin:
	ansible-playbook -k -K playbooks/install_jellyfin.yml -i inventory.txt

install_bind9:
	ansible-playbook -k -K playbooks/install_bind9.yml -i inventory.txt

install_home_assistant:
	ansible-playbook -k -K playbooks/install_home_assistant.yml -i inventory.txt

install_nginx:
	ansible-playbook -k -K playbooks/install_nginx.yml -i inventory.txt

install_nextcloud:
	ansible-playbook -k -K playbooks/install_nextcloud.yml -i inventory.txt

install_igp:
	ansible-playbook -k -K playbooks/install_igp.yml -i inventory.txt

install_glances:
	ansible-playbook -k -K playbooks/install_glances.yml -i inventory.txt

install_owntracks:
	ansible-playbook -k -K playbooks/install_owntracks.yml -i inventory.txt

install_homepage:
	ansible-playbook -k -K playbooks/install_homepage.yml -i inventory.txt

install_gitea:
	ansible-playbook -k -K playbooks/install_gitea.yml -i inventory.txt
