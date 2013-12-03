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
