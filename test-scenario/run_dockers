#!/bin/bash
docker rm dpdk-docker
docker rm pktgen-docker
docker run -it --privileged -v /mnt/huge:/mnt/huge -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name pktgen-docker  moubarakzoure/dpdk-box:base /bin/bash

docker run -it --privileged -v /mnt/huge:/mnt/huge -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name dpdk-docker  moubarakzoure/dpdk-box:base /bin/bash
