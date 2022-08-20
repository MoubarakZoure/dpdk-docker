# dpdk-docker
The aim of this project is to run create a Docker container environnement to run DPDK-based applications.
### dpdk.version = 20.11.1
### dpdk directory = /usr/src/dpdk
### pktgen directory = /usr/pktgen/Builddir/app/pktgen
### Running docker docker run -it --privileged -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v ### /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name box1  moubarakzoure/dpdk-box:base /bin/bash

