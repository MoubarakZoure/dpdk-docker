#!/bin/bash

# add_flow.sh
   #clear current flows
ovs-ofctl del-flows ovs-br0
#add bi-directional flow between vhost-user1 and vhost-user2(port 2 and 3)
ovs-ofctl add-flow ovs-br0 \
in_port=2,dl_type=0x800,idle_timeout=0,action=output:3
ovs-ofctl add-flow ovs-br0 \
in_port=3,dl_type=0x800,idle_timeout=0,action=output:2
#add bi-directional flow between vhost-user0 and vhost-user4(port 1 and 4)
ovs-ofctl add-flow ovs-br0 \
     in_port=1,dl_type=0x800,idle_timeout=0,action=output:4
 ovs-ofctl add-flow ovs-br0 \
    in_port=4,dl_type=0x800,idle_timeout=0,action=output:1
  
 #show current flows
ovs-ofctl dump-flows ovs-br0
