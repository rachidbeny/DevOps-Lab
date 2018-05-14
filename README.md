# DevOps
## Huomio
Harjoitukset on suunniteltu toimimaan Windows 10 ympäristössä, yhdellä virtuaalikoneella.

# Harjoitus 1 - Versionhallinta
## Esivalmistelut
Liity GitHubiin: (https://github.com/join)
Lataa Visual Studio Code: (https://code.visualstudio.com/)
Lataa GitHub työpöytäsovellus: (https://desktop.github.com/)
Lataa Git paketti: (https://git-scm.com/download/win)

## Versionhallinta harjoitus
### Repositoryn hallinta
1. Luo uusi tyhjä repository
2. Clone or Download -> Open in GitHub Desktop
3. Luo uusi branch: Development
4. Muuta README.md tiedostoa
5. Varmista muutokset GitHub Desktopista
6. Committaa muutokset
7. Pushaa paikallinen repository, keskitettyyn repositoryyn
8. Varmista että muutokset siirtyivät GitHubiin

### Branchien yhdistäminen
1. GitHubissa valitse välilehti Pull requests
2. New pull request
3. Base: master
4. Compare: development
5. Tarkastele muutokset ja valitse Create new pull request
6. Yhdistä muutokset

### Branchien yhdistäminen, konfliktien ratkaiseminen
1. Luo uusi branch: Feature-1
2. Muuta README.md tiedostoa, muuta README.md tiedostoa myös development branchissa
3. Varmista muutokset GitHub Desktopista
4. Committaa muutokset
5. Pushaa paikallinen repository, keskitettyyn repositoryyn
6. Varmista että muutokset siirtyivät GitHubiin
7. GitHubissa valitse välilehti Pull requests
8. New pull request
9. Base: development
10. Compare: feature-1
11. Tarkastele muutokset ja valitse Create new pull request
12. Ratkaise konfliktit
13. Yhdistä muutokset
14. Poista feature-1 branch

# Harjoitus 2 - Jatkuvan integraation toteutus
## Esivalmistelut
Lataa Jenkins: (https://jenkins.io/download/)
## Jenkins
1. Asenna Jenkins
2. Avaa sivusto (http://localhost:8080), avaa tiedosto "C:\Program Files(x86)\Jenkins\secrets\initialAdminPassword", kirjaudu sisään ja luo uusi käyttäjätunnus.
3. Asenna kaikki ehdoitetut pluginit
4. Määrittele Git:n polku Global Configuration Tool
5. Asenna Slack plugin
6. Määrittele Slack plugin: (https://wiki.jenkins.io/display/JENKINS/Slack+Plugin)
7. Luo uusi demo pipeline: (http://localhost:8080/job/Demo/pipeline-syntax/) (https://jenkins.io/doc/book/pipeline/)
8. Testaa ensin esimerkki Pipelinessä. Siirrä testin jälkeen GitHubiin ja testaa pipelinen määrittämistä SVC:n yli
## GitHub Hooks
1. Määritä Pipelinen Build trigger
2. Määrittele GitHubissa Settings -> Webhooks -> Add webhook
3. Testaa komentorivillä triggeriä: '''curl http://localhost:8080/job/Demo/build?token=XXXXX'''

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
Bootsrap scripti: https://www.vagrantup.com/docs/provisioning/file.html
Hostname: https://www.vagrantup.com/docs/vagrantfile/machine_settings.html

1. Muuta Vagrantfileä siten että käynnistyessään suorittaa bootsrapin ja ohjaa portin 80 isännän 8080 porttiin. Lisäksi anna nimeksi Harjoitus3.

### Docker esimerkki
Docker: (https://docs.docker.com/install/)

### Esimerkki Wordpress microservice
Lataa Docker Compose: https://docs.docker.com/compose/install/

### Luo uusi kontainer web palvelu

# Harjoitus 4 - Infrastructure as Code

