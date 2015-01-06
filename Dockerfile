FROM centos:latest

ADD install.bash /install.bash

RUN /install.bash
