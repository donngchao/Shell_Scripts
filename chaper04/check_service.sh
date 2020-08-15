#!/bin/bash
#功能描述(Description):使用函数检查服务是否启动的案例脚本.

date_time=$(date +'%Y-%m-%dT%H:%M:%S%z')
date_time2=$(date +'%Y--%m--%dACCURATE_TIME%H:%M:%S%z')
function check_services() {
    for i in "$@"
    do
        if systemctl --quiet is-active ${i}.service; then
            echo -e "[$date_time)]: \033[92mservice $i is active\033[0m"
        else
            echo "[$date_time]: service $i is not active" >&2
        fi
    done
}

function check_sshd() {
    for j in "$@"
    do
        if [[ $j == sshd ]];then
            echo -e "<$date_time2>: \033[92mHELLO, maybe youc can use ssh to login to this machine\033[0m"
        else
            echo "<$date_time2>: what service $j can do for you? Maybe you can google it to know about it."
        fi

    done

}

check_services httpd sshd vsftpd
check_sshd  httpd sshd vsftpd
