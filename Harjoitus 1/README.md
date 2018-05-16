# Harjoitus 1 - Versionhallinta
## Esivalmistelut
Liity GitHubiin: (https://github.com/join)

Lataa ja asenna Visual Studio Code virtuaalikoneelle: (https://code.visualstudio.com/)

Lataa ja asenna GitHub työpöytäsovellus virtuaalikoneelle: (https://desktop.github.com/)

Lataa ja asenna Git paketti virtuaalikoneelle: (https://git-scm.com/download/win)

## Versionhallinta harjoitus
### Repositoryn hallinta
1. Luo uusi tyhjä repository (__luo README tiedosto__)
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