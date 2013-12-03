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

#configuration of nginx
file { "/etc/nginx/sites-available/default":
  source => "puppet:///modules/nodejs-conf/nginx-default",
  mode => 644,
  owner => root,
  group => root,
  require => Exec['apt-get update']
}

#demo app
file { "/home/vagrant/test.js":
  source => "puppet:///modules/nodejs-conf/test.js",
  mode => 644,
  owner => vagrant,
  group => vagrant,
  require => Exec['apt-get update']
}