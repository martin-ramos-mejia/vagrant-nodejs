# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu1204-puppetlabs"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210-nocm.box"
  '''
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provider :rackspace do |rs, override|
    override.vm.box = "dummy"
    override.ssh.private_key_path = "/home/myuser/.ssh/id_rsa_my_private_key"

    rs.username = "YOUR USERNAME"
    rs.api_key = "YOUR API KEY"
    rs.flavor = /1GB/
    rs.image = /Ubuntu/
    rs.public_key_path = "my_custom_key.pub"
  end
  
  config.vm.provision :puppet do |puppet|
    puppet.options = "--verbose --debug"
    puppet.facter = { "esversion" => "0.90.3", "seeds" => seeds }
    puppet.module_path = "puppet/modules"
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "elasticsearchnode.pp"
  end
  '''
end
