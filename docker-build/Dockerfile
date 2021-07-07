FROM ubuntu:18.04

RUN apt-get update && \
apt-get upgrade -y  && \
apt-get update && \
apt-get -y install linux-modules-$(uname -r) \ 
build-essential automake python3-pip python3-six python-six \ 
libcap-ng-dev gawk pciutils linux-headers-$(uname -a | awk '{print $3}') \
vim kmod ninja-build iperf3 net-tools \
iputils-ping python3-dev cmake pkg-config \ 
libnuma-dev libpcap-dev numactl


RUN apt-get remove meson
RUN pip3 install meson && ln -s /usr/local/bin/meson /usr/bin/meson

COPY ./  /root/dpdk-container-lab
COPY ./dpdk /usr/src/dpdk
COPY ./pktgen /usr/src/pktgen
COPY ./  /root/dpdk-container-lab
WORKDIR /root/dpdk-container-lab

ENV DPDK_DIR "/usr/src/dpdk"
ENV DPDK_BUILD "x86_64-native-linuxapp-gcc"
ENV RTE_SDK "/usr/src/dpdk"
ENV RTE_TARGET "x86_64-native-linuxapp-gcc"
COPY ./  /root/dpdk-container-lab
WORKDIR /root/dpdk-container-lab
COPY ./dpdk /usr/src/dpdk
COPY ./pktgen /usr/src/pktgen

RUN cd $DPDK_DIR && meson -Dexamples=all  build && ninja -C build install && ldconfig && \ 
ln -s /usr/src/dpdk /root/dpdk

# building pktgen
ENV PKTGEN_DIR "/usr/src/pktgen"
ENV PKG_CONFIG_PATH "/usr/local/lib/x86_64-linux-gnu/pkgconfig"
RUN export PKG_CONFIG_PATH=/usr/local/lib/x86_64-linux-gnu/pkgconfig
RUN  echo "/usr/local/lib/x86_64-linux-gnu" >> /etc/ld.so.conf.d/x86_64-linux-gnu.conf && ldconfig
RUN cd /usr/src/pktgen && make build

RUN ln -s /usr/src/pktgen/Builddir/app/pktgen /usr/src/dpdk/build/app/pktgen

RUN ln -s /usr/src/pktgen/Builddir/app/pktgen /usr/bin/pktgen
RUN ln -s /usr/src/dpdk/build/app/dpdk-testpmd /usr/bin/testpmd
RUN ln -s /usr/src/dpdk/build/app/dpdk-testpmd /usr/bin/dpdk-testpmd
RUN ln -s /usr/lib/x86_64-linux-gnu/libpcap.so /usr/lib/x86_64-linux-gnu/libpcap.so.1
ENV PATH "$PATH:/usr/src/dpdk/build/app/"
ENV LD_LIBRARY_PATH "/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-21.0/"
WORKDIR  /root/dpdk/build/app
CMD ["/bin/bash"]
