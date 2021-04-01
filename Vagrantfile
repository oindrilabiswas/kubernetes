Vagrant.configure("2") do |config|
    config.vm.boot_timeout = 500
  config.vm.define "k8smaster" do |k8smaster|
    k8smaster.vm.box = "bento/ubuntu-16.04"
    k8smaster.vm.network "private_network", ip: "192.167.10.70"
	k8smaster.vm.hostname = "k8smaster"
	k8smaster.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
	  vb.name = "k8smaster"
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    end
	k8smaster.vm.provision "shell", inline: <<-SHELL
      sudo swapoff -a
      sudo echo "192.167.10.70 k8smaster" >> /etc/hosts
	  sudo echo "192.167.10.71 k8snode1" >> /etc/hosts
    SHELL
  end
  config.vm.define "k8snode1" do |k8snode1|
    k8snode1.vm.box = "bento/ubuntu-16.04"
    k8snode1.vm.network "private_network", ip: "192.167.10.71"
	k8snode1.vm.hostname = "k8snode1"
	k8snode1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
	  vb.name = "k8snode1"
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    end
	k8snode1.vm.provision "shell", inline: <<-SHELL
      sudo swapoff -a
      sudo echo "192.167.10.70 k8smaster" >> /etc/hosts
	  sudo echo "192.167.10.71 k8snode1" >> /etc/hosts
      
    SHELL
  end
  config.vm.define "k8snode2" do |k8snode2|
    k8snode2.vm.box = "bento/ubuntu-16.04"
    k8snode2.vm.network "private_network", ip: "192.167.10.72"
	k8snode2.vm.hostname = "k8snode2"
	k8snode2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
	  vb.name = "k8snode2"
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--cableconnected1", "on"]
    end
	k8snode1.vm.provision "shell", inline: <<-SHELL
      sudo swapoff -a
      sudo echo "192.167.10.70 k8smaster" >> /etc/hosts
	  sudo echo "192.167.10.72 k8snode2" >> /etc/hosts
      
    SHELL
  end
end