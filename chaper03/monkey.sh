#!/bin/bash
#功能描述(Description):使用循环计算猴子吃香蕉的问题.
#一只猴子第一天从树上摘了若干根香蕉,
#当即就吃了一半,还不过瘾,又多吃了一根.
#第二天猴子又将剩下的香蕉吃了一半,禁不住诱惑,又多吃了一根香蕉.
#依此类推,每天都将剩余的香蕉吃一半后再多吃一根.
#到了第九天,猴子发现只剩一根香蕉了,
#请问这只猴子在第一天总共摘了多少根香蕉?


##初始化香蕉数量为1,也就是第九天香蕉数位1.
#每循环一次计算前一天的香蕉数量,循环8次得到第一天的香蕉数量.
banana=1
for i in {1..8}
do
    banana=$[(banana+1)*2]
done
    
echo "after calculation, the origin banana number is:"
echo $banana


orange=1
for j in {1..2}
do
    orange=$[(orange+2)*3]
done
echo $orange
