sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce

sudo apt-get -y install git
sudo mkdir /var/tmp/demo
cd /var/tmp/demo
sudo git clone https://bitbucket.org/robotframework/webdemo.git

sudo git clone https://github.com/ppodgorsek/docker-robot-framework.git
#sudo wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Ketterä%20testaus/Docker/Dockerfile
cd docker-robot-framework
sudo docker build -t robot .
cd ../webdemo
sudo docker run -v ${PWD}:/opt/robotframework/reports:Z -v ${PWD}/login_tests:/opt/robotframework/tests:Z -e BROWSER=firefox -p 80:7272 robot