#!/bin/bash
if [ -z $1 ];then
    echo "错误:未输入服务名称.Error: you did not input the service name"
    echo "用法:脚本名 服务名称."
    exit
fi
if [ -z $2 ];then
    echo "Please tell me your name"
    echo "you should add your name"
    exit
fi

if systemctl is-active $1 &>/dev/null ;then
#&> 将标准输出和错误输出都重定向到/dev/null
    echo "$1已经启动..."
else
    echo "$1未启动..."
fi

if systemctl is-enabled $1 &>/dev/null ;then
    echo "$1是开机自启动项."
else
    echo "$1不是开机自启动项."
fi

if [ $2=='dc' ];then
    echo "your name is dc"
fi
