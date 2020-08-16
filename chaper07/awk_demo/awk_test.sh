#! /bin/bash
#show the usage of awk
echo "###print out the 2nd    column"
awk '{print $2}' test1.txt
echo "##############################"
echo "###print out the 3rd    column"
awk '{print $3}' test1.txt
echo "##############################"

echo -e "\033[46m##print out every line of test1.txt##\033[0m"
awk '{print $0}' test1.txt

echo -e "\033[46m##also print out every line of test1.txt##\033[0m"
awk '{print}' test1.txt

echo -e "\033[46m##print out every line number of test2.txt##\033[0m"
awk '{print NR}' test2.txt


echo -e "\033[46m##print out every line number of test1.txt test2.txt totaly ##\033[0m"
awk '{print NR}'  test1.txt test2.txt

echo -e "\033[46m##print out every line number of test1.txt test2.txt seperately##\033[0m"
awk '{print FNR}' test1.txt test2.txt

echo -e "\033[46m##print out column number of test1.txt##\033[0m"
awk '{print NF}' test1.txt


echo -e "\033[46m##print out the last column of test1.txt##\033[0m"
awk '{print $NF}' test1.txt


echo -e "\033[46m##print out the last second column of test1.txt##\033[0m"
awk '{print $(NF-1)}' test1.txt

echo -e "\033[46m##print out the last third  column of test1.txt##\033[0m"
awk '{print $(NF-2)}' test1.txt


echo -e "\033[46m##print out the file name of test1.txt's each line##\033[0m"
awk '{print FILENAME}' test1.txt

echo "print out variables"
awk -v x="Jacob" '{print x}' test1.txt




echo "print out multiple variables"
awk -v x="Jacob" -v y=11 '{print x,y}' test1.txt
awk -v a="hello" -v b="world" '{print a,b}' test1.txt
awk -v g="shell" -v h="great" '{print h,g}' test1.txt

echo "print out sys variable"
x="hello"
awk -v i=$x '{print i}' test1.txt

j="NICE"
awk '{print "'$j'" }' test1.txt


#set new field seperator as :
awk -v FS=":" '{print $1}' test2.txt
awk -v FS=":" '{print $2}' test2.txt


#set other seperator
awk -v FS="[:,-]" '{print $1}' test2.txt
awk -v FS="[:,-]" '{print $2}' test2.txt
awk -v FS="[:,-]" '{print $3}' test2.txt
awk -v FS="[:,-]" '{print $4}' test2.txt
awk -v FS="[:,-]" '{print $5}' test2.txt

#set file seperator
awk -F: '{print $1}' test2.txt
awk -F: '{print $2}' test2.txt
awk -F"[:,-]" '{print $2}' test2.txt
awk -F"[:,-]" '{print $3}' test2.txt

#set RS, which is record seperator
awk -v RS="," '{print $1}' test1.txt

#set OFS
awk '{print $3,$1,$3}' test1.txt
awk -v OFS=":" '{print $3,$1,$3}' test1.txt
awk -v OFS="-" '{print $3,$1,$3}' test1.txt
awk -v OFS="\t" '{print $3,$1,$3}' test1.txt
awk -v OFS=". "  '{print NR,$0}' test1.txt

#set ORS
awk '{print}' test1.txt
awk -v ORS=":" '{print}' test1.txt

echo
#use print
awk '{print "CPU"}' test1.txt
awk '{print "data:",$1}' test1.txt
awk '{print 123456}' test1.txt
awk '{print $1,12345,$3}' test1.txt

awk '{print "the first column:",$1,"\t the second column:",$2}' test1.txt

#use regex
awk '/world/{print}' test1.txt
awk '/world/' test1.txt
awk '/the/'   test1.txt
awk '$2~/the/' test1.txt
awk '$3~/never/{print $1,$4,$5}' test1.txt
awk '$4~/to/' test1.txt
awk '$4=="to"' test1.txt
awk '$2!="the"' test1.txt

#test /etc/passwd
head -2 /etc/passwd
awk -F: '$3<=10' /etc/passwd
awk -F: '$3>=100' /etc/passwd
awk -F: '$3<=10{print $1}' /etc/passwd
awk 'NR==4' /etc/passwd
awk -F: '$3>1&&$3<5' /etc/passwd
awk -F: '$3==1||$3==5' /etc/passwd

#BEGIN END TEST
awk 'BEGIN{print "OK"}'
awk 'BEGIN{print "OK"}' /etc/passwd
awk 'END{print NR}' /etc/passwd




awk -F: \
'BEGIN{print "user name UID"} \
{print $1,$3,$7}  \
END{print "totally have "NR" accounts."}' /etc/passwd | column -t


awk -F: 'BEGIN{print "passwd test"}{print $0}END{print "total "NR" records"}' /etc/passwd | column -t

#use awk to do math calculation
awk 'BEGIN{print "2+3:" 2+3}'
awk 'BEGIN{print "10-4:" 10-4}'
awk 'BEGIN{print "2*3:"  2*3}'
awk 'BEGIN{print "2/10:" 2/10}'
awk 'BEGIN{print "6%3:"   6%3}'
awk 'BEGIN{print "2**3:" 2**3}'
awk 'BEGIN{print "4**3:" 4**3}'
awk 'BEGIN{x=8;y=2;print "8-2:" x-y}'
awk 'BEGIN{x=8;y=2;print "8*2:" x*y}'
awk 'BEGIN{x=1;x++;print x}'
awk 'BEGIN{x=1;x--;print x}'
awk 'BEGIN{x=1;x+=8;print x}'
awk 'BEGIN{x=8;x-=2;print x}'
awk 'BEGIN{x=8;x*=2;print x}'
awk 'BEGIN{x=8;x/=2;print x}'
awk 'BEGIN{x=8;x%=2;print x}'
awk 'BEGIN{print x+8}'
awk 'BEGIN{print x*8}'
awk 'BEGIN{print "["x"]","["y"]"}'

awk 'BEGIN{print "print whitespace:"x,"print whitespace:"y,"END"}'
awk '/bash$/{x++} END{print x}' /etc/passwd
who | awk '$1=="root"{x++}  END{print x}'
seq 200 | awk '$1%7==0 && $1~/7/'

#df test
df
df | tail -n +2
df | tail -n +2 | awk '{sum+=$4} END{print sum}'

#ls test
ls -l /etc/*.conf
ls -l /etc/*.conf | awk '{sum+=$5} END{print sum}'
ls -l /etc | awk '/^-/{sum+=$5}'

#ps test
ps -eo user,pid,pcpu,comm | awk '{if ($3>0.5) {print}}'
ps -eo user,pid,rss,comm  | awk '{if ($3>1024) {print}}'

useradd rick
useradd vicky
awk -F: \
'{if ($3<1000) {x++}else{y++}} \
END{print "sys user:"x,"normal user:"y}' /etc/passwd

ls -l /etc | awk '{if ($1~/^-/) {x++} else{y++}} END {print "normal file num:"x,"directory num:"y}'

seq 10 | awk '{if ($1%2==0) {print $1" is even";x++} else{print $1" is odd";y++}}END {print "even number:"x,"odd number:"y}'


awk '{if ($2>90) {print $1,"\tperfect life"} else if($2>=80) {print $1,"\tvery great."}
else if($2>=70) {print $1,"\tnormal and just so so"}
else if($2>=60) {print $1,"\tnot bad"}
else {print $1,"\tnot good"}
}' score.txt




