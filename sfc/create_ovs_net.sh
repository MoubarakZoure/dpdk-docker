#!/bin/bash

#ovs-vsctl del-br sfc-net

#ovs-vsctl add-br sfc-net  
#ovs-vsctl add-port sfc-net p1  
#ovs-vsctl add-port sfc-net p2
ovs-docker del-port  sfc-net p1
ovs-docker del-port  sfc-net p2
ovs-docker del-port  sfc-net p3
ovs-vsctl del-br sfc-net
ovs-vsctl add-br sfc-net

ovs-docker add-port  sfc-net p1  vnf1  --ipaddress=192.168.18.1/24 --macaddress="00:00:00:00:00:11" 
ovs-docker add-port  sfc-net p2  vnf2  --ipaddress=192.168.18.2/24 --macaddress="00:00:00:00:00:12"
ovs-docker add-port  sfc-net p3  fw    --ipaddress=192.168.18.3/24 --macaddress="00:00:00:00:00:13"
#show ovs-br0 info
ovs-vsctl show
