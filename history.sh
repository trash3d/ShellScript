#!/bin/sh
#Ordena limpia y guarda el historial de comandos en un archivo
cat ~/.bash_history | grep -v "cd" | grep -v "ls" | sort | uniq >> history.log
sort history.log > history1
uniq history1 > history.log
rm history1


