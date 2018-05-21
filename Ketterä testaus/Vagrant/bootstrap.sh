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
cd webdemo
sudo wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Ketterä%20testaus/Docker/Dockerfile
sudo docker build -t robot .
sudo docker run -p 80:7272 robot