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





