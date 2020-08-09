#!/bin/bash
#功能描述(Description):C语言风格的for循环示例.
#i从1开始,每循环1次对i进行自加1运算,直到i大于5则循环结束.

for ((i=1;i<=5;i++))
do
    echo $i
done

for ((j=1;j<=1000;j++))
do
    echo $j
done


for ((k=100;k<=122;k++))
do
    echo $k
    echo "hello shell script!"
done
