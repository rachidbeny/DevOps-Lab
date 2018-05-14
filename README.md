# DevOps
## Huomio
Harjoitukset on suunniteltu toimimaan Windows 10 ympäristössä, yhdellä virtuaalikoneella.

# Harjoitus 1 - Versionhallinta
## Esivalmistelut
Liity GitHubiin: (https://github.com/join)
Lataa Visual Studio Code: (https://code.visualstudio.com/)
Lataa GitHub työpöytäsovellus: (https://desktop.github.com/)

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
4. Asenna Slack plugin
5. Määrittele Slack plugin: (https://wiki.jenkins.io/display/JENKINS/Slack+Plugin)
6. Luo uusi demo pipeline: (http://localhost:8080/job/Demo/pipeline-syntax/) (https://jenkins.io/doc/book/pipeline/)
7. Testaa ensin esimerkki Pipelinessä. Siirrä testin jälkeen GitHubiin ja testaa pipelinen määrittämistä SVC:n yli
### Jenkins code
## GitHub Hooks

# Harjoitus 3 - Kontainerit ja testausympäristöt

# Harjoitus 4 - Infrastructure as Code

