#!/bin/bash
#功能描述(Description):while基本语法演示.
#无心的死循环.

i=1
while [ $i -le 5 ]
do
    echo "hello world"
    i=$[$i+1]
done

j=2
while [ $j -le 3 ]
do
    echo "Just write your shell."
    j=$[$j+1]
done
