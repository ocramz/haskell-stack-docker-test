FROM phusion/baseimage

COPY setup.sh /

RUN ./setup.sh
