#!/bin/bash

read -p "Digite um nome de um arquivo: " a
cat ${a} | tr -s '\n' '\n'
