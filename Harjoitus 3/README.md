# Harjoitus 3 - Kontainerit ja testausympäristöt
## Esivalmistelut
Lataa Virtualbox: (https://www.virtualbox.org/wiki/Downloads)

Lataa Vagrant: (https://www.vagrantup.com/downloads.html)

### Vagrant käyttö
Vagrant imaget: (https://app.vagrantup.com/boxes/search)

1. Lataa Vagrant levykuva '''vagrant box add ubuntu/xenial64'''
2. Avaa työkansio '''cd XXX'''
3. Alusta vagrant '''vagrant init ubuntu/xenial64'''
4. Käynnistä vagrant palvelin '''vagrant up'''
5. Yhdistä palvelimeen '''vagrant ssh'''
6. Tuhoa palvelin '''vagrant destroy'''

### Vagrant asetukset

Vagrant verkkoasetukset: (https://www.vagrantup.com/docs/networking/)

Bootsrap scripti: (https://www.vagrantup.com/docs/provisioning/file.html)

Hostname: (https://www.vagrantup.com/docs/vagrantfile/machine_settings.html)

1. Muuta Vagrantfileä siten että käynnistyessään suorittaa bootsrapin ja ohjaa portin 80 isännän 8080 porttiin. Lisäksi anna nimeksi Harjoitus3.

### Docker esimerkki
Docker: (https://docs.docker.com/install/)

1. Asenna Docker Vagranttiin
2. Suorita Hello World
3. 

### Esimerkki Wordpress microservice
Lataa Docker Compose: (https://docs.docker.com/compose/install/)

1. Luo bootsrap file joka asentaa Docker-CE:n ja Docker Composen.
(https://docs.docker.com/compose/wordpress/)

### Luo uusi kontainer web palvelu