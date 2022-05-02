FROM centos:centos7.9.2009

LABEL maintainer='Igor Kolomiyets <igor.kolomiyets@iktech.io>'

RUN yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y \
 && yum install -y \
      ansible \
      openssh \
      git \
      python36-pip \
      python36-devel \
      postgresql-devel \
      gcc \
      python36-devel \
 && pip3 install psycopg2 \
            Jinja2

CMD [ "ansible-playbook", "--version" ]

