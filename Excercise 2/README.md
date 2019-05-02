# Excercise 2 - Continuous Integration with Jenkins
## Pre tasks
1. Download and install VirtualBox (https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant (https://www.vagrantup.com/downloads.html)

## Installation
1. Install Jenkins server with following instructions
2. Download "Vagrantfile" and "bootstrap.sh" in Vagrant folder
3. Open Command line (CMD,Powershell,Terminal,bash etc.)
4. Go to folder where you copied previous files _cd abcde_
5. _vagrant up_
6. Wait until you see Initialization password
7. Go to http://localhost:8080
8. Copy Init passwd and create user for Jenkins server
9. Install using suggested plugins

(https://github.com/jenkinsci/docker/blob/master/README.md)

## Jenkins Blue Ocean
1. In Jenkins "Open Blue Ocean"
2. Create a new Pipeline
3. Where do you store your code?: GitHub
4. Create an access token here
  1. Login with your github account
  2. Write token description
  3. Generate token
  4. Copy token and paste it to Jenkins dialog
2. Connect blue ocean with your github account
3. Select Github organization
4. Select Github repository

### Create Pipeline (Build, Test)
1. Agent: any
2. Phase 1: New phase (Build)
3. Phase 1: CMD command: npm install
4. Phase 2: New phase (Test)
5. Phase 2: CMD command: npm test