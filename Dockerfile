FROM ubuntu:precise
MAINTAINER Devdatta Kulkarni <devdatta.kulkarni@rackspace.com>

RUN apt-get -yqq update
RUN apt-get -yqq install build-essential gfortran python-pip python-dev

COPY build.sh /solum/bin/
