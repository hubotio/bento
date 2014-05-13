#!/bin/bash -eux

# Redis
add-apt-repository ppa:chris-lea/redis-server
apt-get update
apt-get -y install redis-server

# Ruby
apt-get -y install \
  build-essential \
  curl \
  git-core \
  libcurl4-openssl-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev
curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz
tar -zxvf ruby-2.1.2.tar.gz
cd ruby-2.1.2
./configure --disable-install-doc
make
make install
cd ..
rm -r ruby-2.1.2 ruby-2.1.2.tar.gz
echo 'gem: --no-document' > /usr/local/etc/gemrc

# Lita
gem install lita
