
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  ip_address = "192.168.222.180"
  config.vm.network "private_network", ip: ip_address

	config.vm.define :core, primary: true  do |core|

    core.vm.hostname = 'dev-test-nginx-php.local'

    # Every Vagrant virtual environment requires a box to build off of.
    core.vm.box = "ubuntu/focal64"

    # Set VM system setup
    core.vm.provider :virtualbox do |p|
      p.name = "DEV-dev-test-nginx-Ubuntu_20.04-nginx-php"
      p.memory = 1024
      p.cpus = 1
    end

    core.vm.synced_folder "/home/depruebas/Dropbox/AdyMaNet/Entornos/vagrant-pruebas/Ubuntu20.04-nginx-php/vagrant/", "/home/vagrant/data/", nfs: true

  end

  config.vm.provision "shell", path: "vagrant/install-nginx-php.sh"

end