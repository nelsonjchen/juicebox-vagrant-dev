FROM ubuntu
MAINTAINER Guilhem Lettron "guilhem@lettron.fr"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# Create and configure vagrant user
RUN useradd --create-home -s /bin/bash vagrant && \
    echo -n 'vagrant:vagrant' | chpasswd && \
    touch /home/vagrant/.hushlogin

# Enable passwordless sudo for vagrant
RUN mkdir -p /etc/sudoers.d && echo "vagrant ALL= NOPASSWD: ALL" > /etc/sudoers.d/vagrant && chmod 0440 /etc/sudoers.d/vagrant
