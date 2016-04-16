#!/bin/bash 

for i in `seq 1 254` ; do (ip=192.168.2.$i; nc -w 1 $ip 3000 | grep --quiet rpi && echo $ip 2> /dev/null & disown) done

