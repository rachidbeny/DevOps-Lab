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