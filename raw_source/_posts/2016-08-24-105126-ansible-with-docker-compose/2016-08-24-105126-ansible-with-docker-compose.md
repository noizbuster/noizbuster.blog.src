---

title: "Ansible with Docker Compose"

author: noizbuster

date:   2016-08-24 10:51:26

category: development

tags: [docker, compose, container, ansible]

---

# 동기
하나의 서비스를 구성하는데

# Ansible with docker-compose



# Add new dependencies

# Add scripts

# Running
load dependencies
```
ansible-galaxy install \
    -r service-dependencies.yml \
    -p ./playbooks/roles
```

playbook 실행
```
ansible-playbook \
    service_docker_compose.yml \
    --limit localhost \
    --ask-vault-pass \
    --ask-become-pass
```
