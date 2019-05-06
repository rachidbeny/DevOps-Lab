# Example 3 - Containers and development environments
## Pre tasks
Download Virtualbox: (https://www.virtualbox.org/wiki/Downloads)

Download Vagrant: (https://www.vagrantup.com/downloads.html)

### Vagrant usage
Vagrant images: (https://app.vagrantup.com/boxes/search)

1. Download Vagrant box ```vagrant box add ubuntu/xenial64```
2. Select workdir (create workdir to your computer first) ```cd XXX```
3. Initialize vagrantfile ```vagrant init ubuntu/xenial64```
4. Start server ```vagrant up```
5. Connect to server ```vagrant ssh```
6. Destroy server ```vagrant destroy```

### Vagrant settings (read)

Vagrant network settings: (https://www.vagrantup.com/docs/networking/)

Bootstrap script: (https://www.vagrantup.com/docs/provisioning/file.html)

Hostname: (https://www.vagrantup.com/docs/vagrantfile/machine_settings.html)

1. Change Vagrantfile, that on startup vagrant runs bootstrap script and forward network port 80 to host 8080 port. Give name Example3.
```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.hostname = "Example3"
end`
```

### Docker installation
Docker: (https://docs.docker.com/install/)

1. Install Docker to Vagrant
2. Run Hello World

* Every command you execute, keep them in notepad etc. *

### Create new container service

(https://github.com/docker-training/webapp)

1. Clone Github repository
2. Create docker image from Dockerfile
3. Start Container
4. Create bootstrap script that install all automatically

```bash
# Install GIT
sudo apt-get -y install git

# Clone Git repository
sudo git clone https://github.com/docker-training/webapp.git

# Create docker image from Dockerfile
sudo docker build -t testwebapp .

# Start Container
sudo docker run -d -p 80:5000 testwebapp
```

### Example: Wordpress microservice
Download Docker Compose: (https://docs.docker.com/compose/install/)

1. Create bootsrap script which installs Docker-CE and Docker compose
2. Install Wordpress (https://docs.docker.com/compose/wordpress/)