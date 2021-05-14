#!/bin/bash

c=3
b=0
a='\n'

while true
do
	if a='\n'
	then
		read -p 'Digite \n' a
		cat $1 | head -$c | tail -3
		c=$((c+3))
		b=$((b+1))
		if [ $(wc -l < $1) -le $(($c - 3)) ]
		then    	
			break
		fi
	fi
done
