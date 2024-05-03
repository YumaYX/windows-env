# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "almalinux/9"
  config.vm.provider "virtualbox" do |hv|
    hv.memory = "1024"
    hv.cpus = 2
  end
  config.vm.network :private_network, ip:"172.17.64.2"
  config.vm.synced_folder '.', '/vagrant'
  config.vm.provision "shell", inline: <<-SHELL
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/YumaYX/init/main/init.sh)"
  SHELL
end
