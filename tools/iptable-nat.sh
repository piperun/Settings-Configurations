#!/usr/bin/env bash


# WIP

# Add IP to NAT
PORT=80 PUBLIC_IP=192.168.190.141 CONTAINER_IP=10.186.145.3 NIC=ens33 \
   sudo -E bash -c 'iptables -t nat -I PREROUTING -i $NIC -p TCP -d $PUBLIC_IP --dport $PORT -j DNAT --to-destination $CONTAINER_IP:$PORT -m comment --comment "forward to container"'


# Remove 
iptables -t nat -D PREROUTING