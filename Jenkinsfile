pipeline {
  agent {
    docker {
      image 'ubuntu:16.04'
    }

  }
  stages {
    stage('Test') {
      steps {
        sh '''rm /var/tmp/demo -R
mkdir /var/tmp/demo
cd /var/tmp/demo
git clone https://bitbucket.org/robotframework/webdemo.git
cd webdemo
wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Ketterä%20testaus/Docker/Dockerfile
docker build -t robot .
docker run -p 80:7272 robot'''
      }
    }
  }
}