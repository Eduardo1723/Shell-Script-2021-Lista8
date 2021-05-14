#!/bin/bash

a=${1}
x=${2}
z=$(wc -l 2> /dev/null < ${a})

if [ -f $a ]
then
	if [ ${x} -le ${z} ]
	then
		cat ${a} | head -$x | tail -1
	else
		echo "Falha: o arquivo ${a} possui apenas ${z} linhas"
	fi
else
	echo "Falha: o arquivo ${a} não existe"
fi
