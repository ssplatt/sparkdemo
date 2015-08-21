# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-7.0"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  
  config.vm.provision "shell",
    inline: "yum -y -q install mailx"
  
  config.vm.provision "chef_zero" do |chef|
    chef.data_bags_path = "databags"
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
    
    chef.add_recipe "sparkdemo"
  end

end
