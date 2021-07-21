FROM ubuntu:20.04

RUN apt-get update && \
apt-get upgrade -y  && \
apt-get update && \
apt-get -y install build-essential \ 
iptables \
nano \ 
net-tools \
iputils-ping 
COPY ./  /root/
WORKDIR /root/
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf && sysctl -p

CMD ["/bin/bash"]
