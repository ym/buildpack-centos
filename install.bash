#!/bin/bash -x
set -e
yum groupinstall -y "Development Tools"
yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel 
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install 2.0.0-p598
rvm use 2.0.0-p598 --default
rvm rubygems current
gem install --verbose fpm
