FROM phusion/baseimage:0.9.18

COPY setup.sh /

RUN ./setup.sh
