#!/bin/bash -eux

apt-get install -y software-properties-common

# Redis
add-apt-repository -y ppa:chris-lea/redis-server

apt-get update

apt-get -y install \
  git-core \
  nodejs \
  nodejs-legacy \
  npm \
  redis-server


npm install -g yo generator-hubot
