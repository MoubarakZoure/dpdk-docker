#!/bin/bash
iptables -A FORWARD -j ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
ifconfig eth0 down
