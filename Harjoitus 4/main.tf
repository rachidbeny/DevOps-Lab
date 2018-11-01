provider "aws" {
  access_key = "xxx"
  secret_key = "xxx"
  region     = "eu-west-1"
}

resource "aws_instance" "jenkins" {
	"ami" = "ami-00035f41c82244dab",
	"instance_type" = "t2.micro",
	"vpc_security_group_ids" = ["${aws_security_group.jenkins.id}"]
	"key_name" = "Jalo-IT"
	"user_data" = <<-EOF
#!/bin/sh
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get -y install docker-ce

sudo docker pull jenkinsci/blueocean
sudo docker run \
  --rm \
  -u root \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean
					EOF
	
}

resource "aws_security_group" "jenkins" {
	"name" = "Jenkins-Security-Group"
	
	ingress {
		"from_port" = "8080"
		"to_port" = "8080"
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
  value = "${aws_instance.jenkins.public_dns}"
}