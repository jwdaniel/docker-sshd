# Docker-sshd

Dockerized SSH service, built on top of [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) images.

## Installed Packages

Base:
  - [Minimal core of Ubuntu - trusty (14.04LTS)](http://packages.ubuntu.com/trusty/ubuntu-minimal)

Packages:
  - [openssh-server](https://help.ubuntu.com/community/SSH/OpenSSH/Configuring)

## Configurations

sshd-config:
  - `PermitRootLogin yes`
  - `UsePAM no`
  - exposed port 22
  - root password: `root`

## Run example

```bash
$ sudo docker run --name server1 -d -P jwdaniel/docker-sshd
$ sudo docker port server1 22
  0.0.0.0:49154

$ ssh root@localhost -p 49154
# The password is `root`
root@server1 $
```

