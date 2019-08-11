# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box settings
  config.vm.box = "ubuntu/xenial64"

  # Provider settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  # Network settings
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Synced folder
  config.vm.synced_folder "./data", "/var/www/html" , :mount_options => ["dmode=777", "fmode=666"]

  # Provisions
  config.vm.provision "shell", path: "install.sh"
end
