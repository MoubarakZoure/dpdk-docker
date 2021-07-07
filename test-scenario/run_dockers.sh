#!/bin/bash

docker stop dpdk-docker
docker stop pktgen-docker
docker rm dpdk-docker
docker rm pktgen-docker
docker run -id --privileged -v /mnt/huge:/mnt/huge -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name pktgen-docker --hostname pktgen  moubarakzoure/dpdk-box:base /bin/bash

docker run -id --privileged -v /mnt/huge:/mnt/huge -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name dpdk-docker --hostname testpmd  moubarakzoure/dpdk-box:base /bin/bash

