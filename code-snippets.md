install ansible:
> bash ansible.sh

full system setup:
```
ansible-playbook --ask-vault-pass local.yml
```

specific setup (based on tags)
```
ansible-playbook --ask-become local.yml --tags hello
```

setup a clean environment based on docker:
- `./build-docker.sh`
- `./run-docker.sh`
