#! /bin/bash
num=$[RANDOM%10 + 1]
while true
do
	read -p "let's play a number guessing game.please input a number:" guess
	if [ $guess -eq $num ];then
		echo "you are so lucky to guess it, the num is $num."
		exit
	elif [ $guess -gt $num ];then
		echo "Sorry, the number in fact is $num, you should guess smaller."
	else
		echo "Sorry, the number in fact is $num, you should guess larger."
	fi
done
