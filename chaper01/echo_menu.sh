#!/bin/bash
#version:1.0
#这个脚本仅演示菜单输出，没有具体的功能实现

echo "这是一个打印菜单的例子"

echo "1.查看网卡信息"
echo "2.查看内存信息"
echo "3.查看磁盘信息
4.查看CPU信息
5.查看账户信息"

#!/bin/bash
#Version:2.0
clear
echo -e "\033[42m---------------------------------\033[0m"
echo -e "\e[2;10H这里是菜单\t\t#"
echo -e "#\e[32m 1.查看网卡信息\e[0m                #"
echo -e "#\e[33m 2.查看内存信息\e[0m                #"
echo -e "#\e[34m 3.查看磁盘信息\e[0m                #"
echo -e "#\e[35m 4.查看CPU信息\e[0m                 #"
echo -e "#\e[36m 5.查看账户信息\e[0m                #"
echo -e "\033[42m---------------------------------\033[0m"
echo
echo -e "@@@@\e[32mTest\e[0m                     @@@@"
echo -e "\033[45m#################################\033[0m"
<<COMMENT
This file shows the usage of echo -e.



COMMENT

printf "\e[32m%s\e[0m\n" "hello_world"
