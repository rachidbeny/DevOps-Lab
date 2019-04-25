# Harjoitus 3 - Kontainerit ja testausympäristöt
## Esivalmistelut
Lataa Virtualbox: (https://www.virtualbox.org/wiki/Downloads)

Lataa Vagrant: (https://www.vagrantup.com/downloads.html)

### Vagrant käyttö
Vagrant images: (https://app.vagrantup.com/boxes/search)

1. Download Vagrant box ```vagrant box add ubuntu/xenial64```
2. Select workdir ```cd XXX```
3. Initialize vagrantfile ```vagrant init ubuntu/xenial64```
4. Start server ```vagrant up```
5. Connect to server ```vagrant ssh```
6. Destroy server ```vagrant destroy```

### Vagrant asetukset

Vagrant verkkoasetukset: (https://www.vagrantup.com/docs/networking/)

Bootstrap scripti: (https://www.vagrantup.com/docs/provisioning/file.html)

Hostname: (https://www.vagrantup.com/docs/vagrantfile/machine_settings.html)

1. Muuta Vagrantfileä siten että käynnistyessään suorittaa bootstrapin ja ohjaa portin 80 isännän 8080 porttiin. Lisäksi anna nimeksi Harjoitus3.

### Docker asennus
Docker: (https://docs.docker.com/install/)

1. Asenna Docker Vagranttiin
2. Suorita Hello World

### Luo uusi kontainer web palvelu

(https://github.com/docker-training/webapp)

1. Tee bootstrap skripti joka kloonaa GitHub Repositoryn ja luo docker imagen Dockerfilestä.
2. Käynnistä kontaineri

```bash
# Asenna GIT
sudo apt-get -y install git

# Git repositoryn kloonaus
sudo git clone https://github.com/docker-training/webapp.git

# Docker imagen koonti Dockerfilestä
sudo docker build -t testwebapp .

# Docker imagen käynnistys
sudo docker run -d -p 80:5000 testwebapp
```

### Esimerkki Wordpress microservice
Lataa Docker Compose: (https://docs.docker.com/compose/install/)

1. Luo bootstrap file joka asentaa Docker-CE:n ja Docker Composen.
2. Asenna wordpress (https://docs.docker.com/compose/wordpress/)