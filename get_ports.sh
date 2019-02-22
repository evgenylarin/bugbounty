#!/bin/bash

for host in $(cat hosts.clean);
        do masscan -e eth0 --router-ip 192.168.109.2 -Pn  $host -p0-65535 --rate=1000 --open | tee -a ports.scan;
done
