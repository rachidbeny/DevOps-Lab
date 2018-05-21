FROM ubuntu:16.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip wget
RUN wget https://raw.githubusercontent.com/PT-Jaloit/DevOps-Lab/master/Ketterä%20testaus/Docker/requirements.txt
RUN pip install -qr requirements.txt
ADD ./webdemo /opt/webdemo/
WORKDIR /opt/webdemo
EXPOSE 7272
CMD ["python", "demoapp/server.py"]
CMD ["robot", "login_tests"]