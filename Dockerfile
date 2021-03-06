FROM ubuntu:trusty
MAINTAINER Jian-Wei Wang

RUN apt-get update && apt-get install -y openssh-server \
  && mkdir /var/run/sshd \
  && echo 'root:root' | chpasswd \
  && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
