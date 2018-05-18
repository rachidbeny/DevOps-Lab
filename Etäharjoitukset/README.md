# Etäharjoitukset
## Virtualisointiympäristön luominen
### Virtualbox
1. Lataa ja asenna virtualbox koneellesi: (https://www.virtualbox.org/wiki/Downloads)

### Vagrant
1. Lataa Vagrant omalle koneellesi: (https://www.vagrantup.com/downloads.html)

### HUOM!
* Virtualbox ei tue virtualisointia virtualisoinnin sisällä! Virtuaali Windows 10:n sisälle ei Virtualboxin tapauksessa voi asentaa Virtualboxia.
* Windows 10:n asentaminen Virtualboxiin ei ole välttämättömyys mikäli haluat asentaa ohjelmistot suoraan omalle koneellesi. Tässä tapauksessa siirry kohtaan: "Ohjelmistojen asentaminen virtuaaliselle Windows 10:lle"

### Windows 10 median lataus
1. Lataa Windows Media Creation Tool koneellesi: ![alt text](https://www.microsoft.com/fi-fi/software-download/windows10)
2. Suorita Media Creation Tool
3. Mitä haluat tehdä?: Luo asennustietoväline (ISO tiedosto)
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image1.png)
4. Valitse kieli arkkitehtuuri ja versio: Poista ruksi "Käytä tälle tietokoneelle suositeltuja asetuksia"
    * Valitse arkkitehtuuriksi: 64-bittinen
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image2.png)
4. Valitse käytettävä tietoväline: ISO-tiedosto
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image3.png)
5. Valitse paikka johon ISO-tiedosto tallennetaan.

### Windows 10:n asentaminen Virtualboxiin
1. Avaa Oracle VM VirtualBox
2. New
    1. Anna nimi: XXXXXXXXX
    2. Tyyppi: Microsoft Windows
    3. Versio Windows 10 (64-bit)
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/vbox1.PNG)
3. Anna haluttu määrä muistia Windows 10:lle -> Next
4. Create a virtual hard disk now -> Next
5. Hard disk file type: VDI -> Next
6. Storage on physical hard disk: Dynamically allocated -> Next
7. File location and size -> Create

1. Oikealla näppäimellä virtuaalikonetta ja Settings
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/vbox2.PNG)
2. Aseta Windows 10 ISO-tiedosto CD-asemaksi
![alt text](https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/vbox3.PNG)
3. Valitse Windows 10 ISO tiedosto -> Avaa -> Ok
4. Käynnistä Windows 10 Start valinnasta.

## Ohjelmistojen asentaminen Windows 10:lle
1. Lataa ja asenna Visual Studio Code virtuaalikoneelle: (https://code.visualstudio.com/)
2. Lataa ja asenna GitHub työpöytäsovellus virtuaalikoneelle: (https://desktop.github.com/)
3. Lataa ja asenna Git paketti virtuaalikoneelle: (https://git-scm.com/download/win)

# Tuotantoympäristöt
## Azure Web App harjoitus
* https://www.microsoft.com/handsonlabs/SelfPacedLabs/?storyGuid=1b0c3b53-801d-49f3-8d08-e43cb2843d13

## AWS Elastic Beanstalk
* https://amazon.qwiklabs.com/focuses/296?locale=en&parent=catalog
