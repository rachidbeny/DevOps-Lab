# Harjoitus 4 - Infrastructure as Code
## AWS EC2 - Palvelimen luonti Ansiblella
Asenna vaadittavat ohjelmistot
```
sudo apt-get update
sudo apt-get -y install ansible
sudo apt-get -y install python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install boto
sudo apt-get install ansible
```

Määritä AWS Api avaimet (https://console.aws.amazon.com/iam/home?#/security_credential):
```
export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXXXXXXXX"
export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXX"
```

Kopioi ec2.yaml palvelimelle

Luo uusi palvelin

```ansible-playbook -i ./ansible-hosts ec2.yml```

Source: https://www.agix.com.au/build-an-ec2-using-ansible-step-by-step/