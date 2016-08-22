# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"

  ### Network settings ###
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.hostname = "vagrant.dev"
  # you need vagrant-hostsupdater
  config.hostsupdater.aliases = ["owl.vagrant.dev", "common.vagrant.dev"]
  # ssh forward agent
  config.ssh.forward_agent = true

  ### Synced folder settings ###
  config.vm.synced_folder "./data", "/vagrant", mount_options: ['dmode=777','fmode=755']

  ### Provider settings ###
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  ### Provisioning settings ###
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end
end
