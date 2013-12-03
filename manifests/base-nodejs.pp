include nodejs

group { "puppet":
  ensure => "present",
}

exec { 'install upstart':
  command => '/usr/bin/apt-get install -y upstart',
}

exec { 'install monit':
  command => '/usr/bin/apt-get install -y monit',
}

exec { 'install nginx':
  command => '/usr/bin/apt-get install -y nginx',
}

# Configuration of nginx
file { "/etc/nginx/sites-available/default":
  source => "puppet:///modules/nodejs-conf/nginx-default",
  mode => 644,
  owner => root,
  group => root,
  require => Exec['apt-get update']
}

# creation of demo app
# TODO: better path ;)
file { "/root/test.js":
  source => "puppet:///modules/nodejs-conf/test.js",
  mode => 644,
  owner => root,
  group => root,
  require => Exec['apt-get update']
}

# creation of upstart configuration for test.js
file { "/etc/init/test.conf":
  source => "puppet:///modules/nodejs-conf/test.conf",
  mode => 744,
  owner => root,
  group => root,
  require => Exec['apt-get update']
}

# creation of monit for test.js
file { "/etc/monit/monitrc":
  source => "puppet:///modules/nodejs-conf/monitrc",
  mode => 700,
  owner => root,
  group => root,
  require => Exec['apt-get update']
}
