#!/bin/bash

docker stop vnf1
docker stop vnf2
docker stop fw
docker rm fw
docker rm vnf1
docker rm vnf2
docker run -id --privileged  --name vnf1 --hostname vnf1  moubarakzoure/sfc-docker:base /bin/bash

docker run -id --privileged  --name vnf2 --hostname vnf2  moubarakzoure/sfc-docker:base /bin/bash

docker run -id --privileged  --name fw --hostname fw  moubarakzoure/sfc-docker:base /bin/bash


#docker run -id --privileged -v /mnt/huge:/mnt/huge -v /sys/bus/pci/drivers:/sys/bus/pci/drivers -v /sys/kernel/mm/hugepages:/sys/kernel/mm/hugepages -v /sys/devices/system/node:/sys/devices/system/node -v /dev:/dev -v  /usr/local/var/run/openvswitch/:/var/run/openvswitch/  --name dpdk-docker --hostname testpmd  moubarakzoure/dpdk-box:base /bin/bash

