FROM ubuntu:focal
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt update && apt install -y sudo curl git sudo ansible build-essential
WORKDIR /home/dave/ansible
COPY . .
#CMD ["sh", "-c", "ansible-playbook --ask-vault-pass local.yml"]
