#!/bin/bash
#功能描述(Description):使用函数输出帮助信息.

function print_usage() {
    cat << EOF
Usage: --help | -h
  Print help information for script.
Usage: --memory | -m
  Monitor memory information.
Usage: --network | -n
  Monitor network interface information.
EOF
}

function test_fun() {
   echo "Just use this function!"
   cat << EOF
   Use this function is for shell function usage test
   As well as a kind of test of cat EOF TEST

EOF
}

case $1 in
--memory|-m)
    free;;
--network|-n)
    ip -s link;;
--help|-h)
    print_usage;;
--test|-t)
   test_fun;;
*)
    print_usage;;
esac
