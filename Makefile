portainer:
	ansible-playbook -k -K portainer.yml

docker:
	ansible-playbook -k -K docker.yml

dokku:
	ansible-playbook -k -K dokku.yml
