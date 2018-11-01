# Harjoitus 2 - Jatkuvan integraation toteutus
## Esivalmistelut
1. Lataa ja asenna VirtualBox (https://www.virtualbox.org/wiki/Downloads)
2. Lataa ja asenna Vagrant (https://www.vagrantup.com/downloads.html)

## Asennus
1. Asenna Linux palvelin Vagrantin avulla
```cmd
echo Komentorivillä:
vagrant box add ubuntu/trusty64
echo Levykuvia muita: https://app.vagrantup.com/boxes/search

echo Luo työkansio C:\Temp kansioon. Esim C:\Temp\Harjoitus2

cd C:\Temp\Harjoitus2
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```
1. Asenna Jenkins Linux palvelimelle ja ota käyttöön Blue Ocean lisäosa ja luo tällä uusi pipeline (https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Ubuntu)
2. Kun olet epäonnistunut tarpeeksi asennuksessa niin käytä seuraavaa ohjetta:

```
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce

sudo docker pull jenkinsci/blueocean
sudo docker run \
  --rm \
  -u root \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean
``` 

(https://github.com/jenkinsci/docker/blob/master/README.md)

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

## Jenkins Blue Ocean ja pipelinet
1. Luodaan esimerkki pipeline joka luo Node JS sovelluksen ja testaa tämän (https://jenkins.io/doc/tutorials/build-a-node-js-and-react-app-with-npm/)
2. Luo pipeline että sisältö haetaan GitHubista. Kloonaa (https://github.com/jenkins-docs/simple-node-js-react-npm-app) sisältö omaan GitHub repositoryyn. 
3. Luo pipeline vaihe kerrallaan. (Build, Test, Deliver) (https://jenkins.io/doc/tutorials/create-a-pipeline-in-blue-ocean/)
 