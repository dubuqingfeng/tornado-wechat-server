# About Python tornado of Docker
# 
# Version:

FROM centos:7
MAINTAINER Dubu Qingfeng <1135326346@qq.com>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
RUN yum -y group install "Development Tools"
RUN yum -y install python-virtualenv; yum clean all

ADD . /src

RUN cd /src; pip install -r requirements.txt

ENV WECHAT_TOKEN wechattestt0ken

EXPOSE 80

CMD ["python", "/src/app.py"]
