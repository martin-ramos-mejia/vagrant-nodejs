# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "Puppetlabs_Ubuntu_12_04"        

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"  

  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provider :rackspace do |rs, override|
    override.vm.box = "dummy"

    rs.username = "YOUR USERNAME"
    rs.api_key = "YOUR API KEY"
    rs.flavor = /1GB/
    rs.image = /Ubuntu/
    rs.public_key_path = "/path/to/my/custom_key.pub"
 end


  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file = "base-nodejs.pp"
     puppet.module_path = "modules"
  end

end
