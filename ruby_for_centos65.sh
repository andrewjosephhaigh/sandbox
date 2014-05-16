#!/bin/bash

sudo yum -y groupinstall 'Development Tools'
sudo yum install -y httpd-devel openssl-devel zlib-devel gcc gcc-c++ curl-devel expat-devel gettext-devel patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel make bzip2 zlib1g mysql-server
wget http://pyyaml.org/download/libyaml/yaml-0.1.6.tar.gz
tar zxvf yaml-0.1.6.tar.gz
cd yaml-0.1.6
./configure --prefix=/usr/local
make
#make install

cd
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p545.tar.gz
tar zxvf ruby-1.9.3-p545.tar.gz
cd ruby-1.9.3-p454
./configure
make
#make install

cd
wget http://production.cf.rubygems.org/rubygems/rubygems-2.2.2.tgz
cd rubygems-2.2.2

#gem install bundler