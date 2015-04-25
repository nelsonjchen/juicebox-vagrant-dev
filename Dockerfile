FROM nelsonjchen/docker-vagrant-ubuntu
MAINTAINER Nelson Chen "nelson@mindflakes.com"

USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
  build-essential \
  software-properties-common \
  python-software-properties \
  curl \
  git
