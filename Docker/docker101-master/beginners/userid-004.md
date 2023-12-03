# How to run Docker container with userID at runtime

```bash
$ docker run -d --user 1001 ubuntu:latest sleep infinity
0de5393c47ab138c7679957a4bec97672f910f77fba842b4637ef5de4f327e38
```

```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS
          NAMES
0de5393c47ab        ubuntu:latest       "sleep infinity"    6 seconds ago       Up 4 seconds          eloquent_meninsky
```

```bash
$ docker exec -it 0de id
uid=1001 gid=0(root) groups=0(root)
[node3] (local) root@192.168.0.6 ~
$
```

## How can I specify user under Dockerfile

```bash
git clone https://github.com/ajeetraina/docker101/

cd beginners/user/

docker build -t ajeetraina/createuser -f ./user1.Dockerfile .
```
