#!/bin/sh


egrep 'COMP[29]041' $1 | cut -d',' -f2 | cut -d' ' -f2|sort -n|uniq -c|sort|tail -1| sed 's/[ ]*[0-9]* //'

