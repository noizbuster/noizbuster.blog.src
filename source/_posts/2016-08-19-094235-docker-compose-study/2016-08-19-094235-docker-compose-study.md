---

author: noizbuster

title: "Docker Compose Study"

tags: [docker, compose, container]

category: development

---

### 설치

[https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/) 참고

```
sudo -i

```
```
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

```

```
chmod +x /usr/local/bin/docker-compose

```

### compose file 작성
최신 version 으로 작성하는것을 권장한다.  
[Compose file reference](https://docs.docker.com/compose/compose-file/)  
