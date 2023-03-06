portainer:
	ansible-playbook -k -K portainer.yml

docker:
	ansible-playbook -k -K docker.yml

dokku:
	ansible-playbook -k -K dokku.yml

dokku_new_app:
	ansible-playbook -k -K dokku_new_app.yml

dokku_setup_backups:
	ansible-playbook -k -K dokku_setup_backups.yml

dokku_add_domain:
	ansible-playbook -k -K dokku_add_domain.yml

dokku_setup_certificates:
	ansible-playbook -k -K dokku_setup_certificates.yml

octoprint:
	ansible-playbook -k -K octoprint.yml
