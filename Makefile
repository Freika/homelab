portainer:
	ansible-playbook -k -K portainer.yml

docker:
	ansible-playbook -k -K docker.yml

dokku:
	ansible-playbook -k -K dokku.yml

dokku_new_app:
	ansible-playbook -k -K dokku_new_app.yml
