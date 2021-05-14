#!/bin/bash

read -p "Digite um endereço IP: " a && echo $a > a.txt

b=$(tr -s '.' '\n' < a.txt) 
c=$(tr -s '.' '\n' < a.txt > num.txt)

echo -e "octeto #1 \nocteto #2 \nocteto #3 \nocteto #4 " > oct.txt
echo -e "em binario \nem binario \nem binario \nem binario " > em.txt
echo "obase=2; ibase=10; ${b}" | bc > bin.txt

paste oct.txt num.txt em.txt bin.txt | tr '\t' ' '

rm a.txt num.txt oct.txt em.txt bin.txt
