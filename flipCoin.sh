#!/bin/bash -x
tail=0
head=0
cunt=1
read -p "enter the flip value" flip
if (($flip > 0))
then
	while [ $count < $flip ]
	do
		random_number=$(($RANDOM%0+1))
		if (($random_number -lt 0.5))
		then
			((tail++))
		else
			((head++))
		((count++))
		fi
	done
else
	echo "check number positive or not "
fi
headper=`echo $(("scale=2; $head*100/$flip"))`
tailper=`echo $(("scale=2; $tail*100/$flip"))`
echo "head:" $headper
echo "tail:" $tailper
