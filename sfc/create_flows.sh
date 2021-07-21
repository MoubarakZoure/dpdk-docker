#!/bin/bash

# add_flow.sh
   #clear current flows
#ovs-ofctl del-flows  sfc-net


ovs-ofctl del-flows sfc-net cookie=0x1/1

ovs-ofctl add-flows sfc-net flow.config
#ovs-ofctl add-flow sfc-net cookie=0x1, dl_src=00:00:00:00:00:11, \
#dl_dst=00:00:00:00:00:12, \
#dl_type=0x800,idle_timeout=0, \
#nw_proto=1, \
#actions=NORMAL



#mod_dl_dst:00:00:00:00:00:13
 #show current flows
ovs-ofctl dump-flows  sfc-net

