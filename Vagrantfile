# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos7_mini"

  ### Network settings ###
  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.hostname = "vagrant.dev"
  # you need vagrant-hostsupdater
  config.hostsupdater.aliases = ["owl.vagrant.dev", "common.vagrant.dev"]

  ### Synced folder settings ###
  config.vm.synced_folder "./data", "/vagrant", mount_options: ['dmode=777','fmode=755']

  ### Provider settings ###
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
