class nodejs {

  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
  }

  exec { 'installing nodejs dependencies':
    command => '/usr/bin/apt-get install -y python-software-properties python g++ make',
  }

  exec { 'add external repository':
    command => '/usr/bin/add-apt-repository -y ppa:chris-lea/node.js',
  }

  exec { 'bing updates from external repository':
    command => '/usr/bin/apt-get update',
  }

  exec { 'install nodejs stable':
    command => '/usr/bin/apt-get install -y nodejs',
  }

}