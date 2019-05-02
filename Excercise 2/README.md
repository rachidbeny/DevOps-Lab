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
  - Login with your github account
  - Write token description
  - Generate token
  - Copy token and paste it to Jenkins dialog
5. Connect blue ocean with your github account
6. Select Github organization
7. Select Github repository

### Create Pipeline (Build, Test)
1. Agent: Docker
 - Image: node:8-alpine
 - Args: -p 3000:3000
2. Phase 1: New phase (Build)
 - Steps -> Add step
 - Shell Script
 - npm install
3. Phase 2: New phase (Test)
 - Steps -> Add step
 - Shell Script
 - npm test
 4. Save pipeline
  - Commit to new branch: Development
  - Save & run

### Schedule automatic scan
1. Go to Classic Jenkins UI
2. Select Project
3. Configure
4. Scan Repository Triggers -> Periodically if not otherwise run -> 1 minute
5. Save

### Add delivery to pipeline
1. Edit Jenkins pipeline
2. Phase 3: New phase (Delivery)
 - Steps -> Add step
 - Shell Script
 - npm start
 3. Check that application is running: http://localhost:3000

 ### Edit Jenkinsfile
 1. Once Delivery is up and running, build not complete unless delivery phase have not completed. Modification to Git, which launches new build process will not launch because network port is already in use.
 2. Edit Jenkinsfile in git repository
 3. Overwrite contents of your git repository Jenkinsfile to same as (Jenkinsfile)