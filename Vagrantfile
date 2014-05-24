# -*- coding: utf-8 -*-
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "Trusty"
    ubuntu.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

    ubuntu.vm.network "forwarded_port", guest: 80, host: 8080

    ubuntu.vm.network "private_network", ip: "192.168.30.100"
    ubuntu.vm.provision :ansible do |ansible|
      ansible.limit = 'all'
      ansible.playbook = "site.yml"
      ansible.inventory_path = "ubuntu.box"
    end
  end

  config.vm.define :centos do |centos|
    centos.vm.box = "CentOS65"
    centos.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"

    centos.vm.network "forwarded_port", guest: 80, host: 8081

    centos.vm.network "private_network", ip: "192.168.30.101"
    centos.vm.provision :ansible do |ansible|
      ansible.limit = 'all'
      ansible.playbook = "site.yml"
      ansible.inventory_path = "centos.box"
    end
  end

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
