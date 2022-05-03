FROM ubuntu:22.04

LABEL maintainer='Igor Kolomiyets <igor.kolomiyets@iktech.io>'

RUN apt-get update \ 
 && apt-get upgrade -y \
 && apt-get install -y \
      python3-pip \
      git \
      libpq-dev \
 && pip3 install \
            ansible \
            psycopg2 \
            Jinja2

CMD [ "ansible-playbook", "--version" ]

