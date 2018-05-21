# Robot Framework esimerkki
## Esimerkki
(https://bitbucket.org/robotframework/webdemo/overview)

1. Lataa Vagrant levykuva ```vagrant box add ubuntu/xenial64```
2. Avaa työkansio ```cd XXX```
3. Alusta vagrant ```vagrant init ubuntu/xenial64```
4. Käynnistä vagrant palvelin ```vagrant up```
5. Yhdistä palvelimeen ```vagrant ssh```

1. ```A precondition for running the tests is having Robot Framework and SeleniumLibrary installed, and they in turn require Python. Robot Framework installation instructions cover both Robot and Python installations, and SeleniumLibrary has its own installation instructions.```
2. Asenna Python ja Git koneelle: ```apt-get install -y -q python-all python-pip git```
3. Asenna Python kirjastot: ```pip install robotframework && pip install robotframework-seleniumlibrary```
4. Kloonaa Git varasto koneelle: ```sudo git clone https://bitbucket.org/robotframework/webdemo.git```
5. Käynnistä web sovellus: ```python demoapp/server.py```
5. Aja testit: ```robot login_tests```
