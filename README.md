# Prereqs

[Vagrant](http://www.vagrantup.com/)

    wget http://data.riakcs.net:8080/yokozuna/riak-yokozuna-0.7.0-src.tar.gz

or get the tar [here](https://github.com/basho/yokozuna/blob/master/docs/INSTALL.md)

# Running

after placing the Yokozuna tar in the directory just run

    vagrant up

You can now `vagrant ssh` and `ps aux | grep riak` to make sure Riak/Yokozuna is running.
