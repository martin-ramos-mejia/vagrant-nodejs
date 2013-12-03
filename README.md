vagrant-nodejs
==============

* Install virtual box and vagrant
* Run 'vagrant up'.

once the environment is created, you can start by the following commands:

```
# using upstart we can start the configure node.js application 
$ sudo start test
```

```
# restart nginx to serve the application on the port 80
$ sudo start test
```

```
# with monit we can monitor de node.js app
monit -d 60 -c /etc/monit/monitrc
```

Also in the base configuration, the rackspace provider in considered. 
An Ubuntu image with puppet is expected.