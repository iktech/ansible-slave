FROM ubuntu:24.04

LABEL maintainer='Igor Kolomiyets <igor.kolomiyets@iktech.io>'

RUN apt-get update \ 
 && apt-get upgrade -y \
 && apt-get install -y \
      python3-pip \
      git \
      libpq-dev \
      ansible \
      python3-psycopg2 \
      python3-boto3 \
 && ansible-galaxy collection install community.postgresql

CMD [ "ansible-playbook", "--version" ]

