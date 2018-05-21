FROM ubuntu:16.04
RUN wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Ketterä%20testaus/Docker/requirements.txt
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip 
RUN pip install -qr requirements.txt
ADD ./WebDemo /opt/WebDemo/
WORKDIR /opt/WebDemo
EXPOSE 7272
CMD ["python", "demoapp/server.py"]
CMD ["robot", "login_tests/login_tests"]
