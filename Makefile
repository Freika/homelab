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
