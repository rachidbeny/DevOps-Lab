# Harjoitus 2 - Jatkuvan integraation toteutus
## Esivalmistelut
1. Asenna Jenkins Linux palvelimelle ja ota käyttöön Blue Ocean lisäosa ja luo tällä uusi pipeline (https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Ubuntu)
2. Kun olet epäonnistunut tarpeeksi asennuksessa niin käytä seuraavaa ohjetta:

```
sudo docker pull jenkins/jenkins:lts
sudo docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
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
 