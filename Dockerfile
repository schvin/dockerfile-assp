FROM debian:wheezy
MAINTAINER George Lewis <schvin@schvin.net>

RUN apt-get -y update
RUN apt-get install -y curl unzip perl-modules
RUN mkdir -p /s
WORKDIR /s
RUN curl -L -O http://downloads.sourceforge.net/project/assp/ASSP%20V2%20multithreading/2.4.3%2014313/ASSP_2.4.3_14313_install.zip
ADD modules.txt
RUN PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install JSON'




