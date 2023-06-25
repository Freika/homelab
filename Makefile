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

dokku_add_ssl:
	ansible-playbook -k -K dokku_add_ssl.yml

octoprint:
	ansible-playbook -k -K octoprint.yml

samba:
	ansible-playbook -k -K samba.yml

backup:
	ansible-playbook -k -K backup.yml
