# Etäharjoitukset
## Virtualisointiympäristön luominen
### Virtualbox
1. Lataa ja asenna virtualbox koneellesi: (https://www.virtualbox.org/wiki/Downloads)

### Windows 10 median lataus
1. Lataa Windows Media Creation Tool koneellesi: (https://www.microsoft.com/fi-fi/software-download/windows10)
2. Suorita Media Creation Tool
3. Mitä haluat tehdä?: Luo asennustietoväline (ISO tiedosto)
(https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image1.png)
4. Valitse kieli arkkitehtuuri ja versio: Poista ruksi "Käytä tälle tietokoneelle suositeltuja asetuksia"
    * Valitse arkkitehtuuriksi: 64-bittinen
(https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image2.png)
4. Valitse käytettävä tietoväline: ISO-tiedosto
(https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/image3.png)
5. Valitse paikka johon ISO-tiedosto tallennetaan.

### Windows 10:n asentaminen Virtualboxiin
1. Avaa Oracle VM VirtualBox
2. New
    1. Anna nimi: XXXXXXXXX
    2. Tyyppi: Microsoft Windows
    3. Versio Windows 10 (64-bit)
(https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/vbox1.PNG)
3. Anna haluttu määrä muistia Windows 10:lle -> Next
4. Create a virtual hard disk now -> Next
5. Hard disk file type: VDI -> Next
6. Storage on physical hard disk: Dynamically allocated -> Next
7. File location and size -> Create

1. Oikealla näppäimellä virtuaalikonetta ja Settings
(https://github.com/PT-Jaloit/DevOps-Lab/blob/master/Et%C3%A4harjoitukset/Screenshots/vbox2.PNG)