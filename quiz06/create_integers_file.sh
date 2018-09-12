#!/bin/sh
touch $3
low=$1
high=$2
for (( i=$low; i<=$high;i++))
do
    echo "$i" >> $3
done

