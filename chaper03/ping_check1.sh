#!/bin/bash
#功能描述(Description):测试某个网段内所有主机的连通性.

net="192.168.4"
for i in {1..254}
do
    ping -c2 -i0.2 -W1 $net.$i &>/dev/null
    if [ $? -eq 0 ];then
        echo "$net.$i is up."
    else
        echo "$net.$i is down."
    fi
done

subnet="200.200.153"
for j in {1..255}
do
    ping -c2 -i0.5 -W1 $subnet.$j &>/dev/null
    if [ $? -eq 0 ];then
	echo "$subnet.$j is up."
    else
	echo "$subnet.$j is down."
    fi
done
