#####################################
# Dockerfile
#
# Software:		cwl-runner
# Software Version:	1.0.0
# Description:		Basic cwl-runner image
# Websites:		http://www.commonwl.org/; https://github.com/common-workflow-language/common-workflow-language
# Base Image:		ubuntu:14.04
# Build Cmd:		docker build --rm --no-cache -t chrishah/testing_cwl:v1.0.0 .
# Pull Cmd:		docker pull chrishah/testing_cwl:v1.0.0
# Run Cmd:		docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 /bin/bash #to enter the container
# Run Cmd:		docker run --privileged --rm -it -v $(pwd):/home chrishah/testing_cwl:v1.0.0 cwl-runner #run as executable
#
#####################################

FROM ubuntu:14.04

MAINTAINER Christoph Hahn <chrisi.hahni@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y

# Not essential, but wise to set the lang (taken from szitenberg/reprophylo)
RUN apt-get install -y language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# some necessary dependencies, developer tools
RUN apt-get install -y -q build-essential make gcc zlib1g-dev git python python-dev python-pip vim wget curl openjdk-7-jre && \
	apt-get clean && \
	apt-get purge

#install cwltools
RUN pip install cwl-runner==1.0.0

WORKDIR /home
RUN chmod -R a+rw /home

#ENTRYPOINT ["cwl-runner"]
