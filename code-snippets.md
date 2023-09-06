install ansible:
> bash ansible.sh

full system setup:
> ansible-playbook --ask-vault-pass --ask-become local.yml

setup a clean environment based on docker:
> ./build-docker.sh
> ./run-docker.sh
