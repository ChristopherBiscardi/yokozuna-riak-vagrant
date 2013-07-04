#!/bin/bash

cd /vagrant
tar zxvf riak-yokozuna-0.7.0-src.tar.gz
sudo apt-get update -y && sudo apt-get install build-essential make git erlang ivy -y
# sudo cp -r /vagrant/riak-yokozuna-0.7.0-src /home
# cd /home/riak-yokozuna-0.7.0-src/
cd /vagrant/riak-yokozuna-0.7.0-src/
make && make stage
sed -e '/{yokozuna,/,/]}/{s/{enabled, false}/{enabled, true}/;}' -i.back /vagrant/riak-yokozuna-0.7.0-src/rel/riak/etc/app.config
ulimit -n 4096
cd /vagrant
./riak-yokozuna-0.7.0-src/rel/riak/bin/riak start
