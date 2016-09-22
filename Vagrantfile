# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = 'mean-dev'

  config.vm.network "forwarded_port", guest: 1337, host: 1337

  config.vm.synced_folder "projects", "/home/vagrant/projects"

  config.vm.provision :shell, :path => 'bootstrap.sh', :keep_color => true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end
end
