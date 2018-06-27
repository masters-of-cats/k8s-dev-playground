# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/artful64"
  # config.disksize.size = "40GB"

  # default_shared_folder = "#{ENV.fetch('HOME')}/workspace"
  # shared_folder = ENV.fetch('LINUX_PLAYGROUND_SHARED_DIR', default_shared_folder)
  # config.vm.synced_folder shared_folder, "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.name = 'k8s-dev-playground'

    require 'etc'
    num_cpus = Etc.nprocessors
    vb.cpus = ENV.fetch('K8S_DEV_PLAYGROUND_CPUS', num_cpus)

    vb.memory = ENV.fetch('K8S_DEV_PLAYGROUND_MEMORY', 8192)
  end

  config.vm.provision "shell" do |s|
    s.inline = "sudo apt-get update && sudo apt-get install -y python-dev"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
