# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-19.10"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "packer-builder-badusb"
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./out", "/out"

  config.vm.provision "shell", inline: "apt-get update"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "file", source: "boards", destination: "packer-builder-arm/boards"
end
