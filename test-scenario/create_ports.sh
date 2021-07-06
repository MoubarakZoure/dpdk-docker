# creat_ports.sh
#ovs use core 2 for the PMD
ovs-vsctl set Open_vSwitch . other_config:pmd-cpu-mask=0x4
#create br0 and vhost ports which use DPDK
ovs-vsctl add-br ovs-br0 -- set bridge ovs-br0 datapath_type=netdev
ovs-vsctl add-port ovs-br0 vhost-user0 -- set Interface vhost-user0 type=dpdkvhostuser
ovs-vsctl add-port ovs-br0 vhost-user1 -- set Interface vhost-user1 type=dpdkvhostuser
ovs-vsctl add-port ovs-br0 vhost-user2 -- set Interface vhost-user2 type=dpdkvhostuser
ovs-vsctl add-port ovs-br0 vhost-user3 -- set Interface vhost-user3 type=dpdkvhostuser

 11 #show ovs-br0 info
 12 ovs-vsctl show
