provider "aws" {
  access_key = "xxx"
  secret_key = "xxx"
  region     = "eu-west-1"
}

resource "aws_instance" "wordpress" {
	"ami" = "ami-00035f41c82244dab",
	"instance_type" = "t2.micro",
	"vpc_security_group_ids" = ["${aws_security_group.wordpress.id}"]
	"key_name" = "Jalo-IT"
	"user_data" = <<-EOF
#!/bin/sh
# Install Docker-CE

sudo apt-get update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo docker run hello-world

# Install Docker Compose

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose --version

wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Harjoitus%203/Docker%20Compose/docker-compose.yaml
sudo docker-compose up -d
					EOF
	
}

resource "aws_security_group" "wordpress" {
	"name" = "Wordpress-Security-Group"
	
	ingress {
		"from_port" = "8000"
		"to_port" = "8000"
		"protocol" = "tcp"
		"cidr_blocks" = ["0.0.0.0/0"]
	}
	egress {
		from_port   = 0
		to_port     = 0
		protocol    = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

output "address" {
  value = "${aws_instance.wordpress.public_dns}"
}