#!/bin/bash
#
#
#

source ../exports.sh 

apt update

apt upgrade -y

apt install --no-install-recommends --assume-yes \
  build-essential \
  curl \
  cmake \
  pkg-config \
  python3 \
  python3-pip \
  gnupg

# gvm-libs dependencies
apt install -y \
  libcjson-dev \
  libcurl4-gnutls-dev \
  libgcrypt-dev \
  libglib2.0-dev \
  libgnutls28-dev \
  libgpgme-dev \
  libhiredis-dev \
  libnet1-dev \
  libpaho-mqtt-dev \
  libpcap-dev \
  libssh-dev \
  libxml2-dev \
  uuid-dev

apt install -y \
  libldap2-dev \
  libradcli-dev
  
# gvmd dependenices
apt install -y \
  libbsd-dev \
  libcjson-dev \
  libglib2.0-dev \
  libgnutls28-dev \
  libgpgme-dev \
  libical-dev \
  libpq-dev \
  postgresql-server-dev-all \
  rsync \
  xsltproc

apt install -y --no-install-recommends \
  dpkg \
  fakeroot \
  gnupg \
  gnutls-bin \
  gpgsm \
  nsis \
  openssh-client \
  python3 \
  python3-lxml \
  rpm \
  smbclient \
  snmp \
  socat \
  sshpass \
  texlive-fonts-recommended \
  texlive-latex-extra \
  wget \
  xmlstarlet \
  zip

# pg-gvm
apt install -y \
  libglib2.0-dev \
  libical-dev \
  postgresql-server-dev-all
  
# gsad
apt install -y \
  libbrotli-dev \
  libglib2.0-dev \
  libgnutls28-dev \
  libmicrohttpd-dev \
  libxml2-dev
  
# openvas-scanner
apt install -y \
  bison \
  libglib2.0-dev \
  libgnutls28-dev \
  libgcrypt20-dev \
  libpcap-dev \
  libgpgme-dev \
  libksba-dev \
  rsync \
  nmap \
  libjson-glib-dev \
  libcurl4-gnutls-dev \
  libbsd-dev \
  krb5-multidev
  
apt install -y \
  python3-impacket \
  libsnmp-dev

# ospd-openvas
apt install -y \
  python3 \
  python3-pip \
  python3-setuptools \
  python3-packaging \
  python3-wrapt \
  python3-cffi \
  python3-psutil \
  python3-lxml \
  python3-defusedxml \
  python3-paramiko \
  python3-redis \
  python3-gnupg \
  python3-paho-mqtt

# openvas
apt install -y 
  rust-all
  
apt install -y \
  pkg-config \
  libssl-dev
