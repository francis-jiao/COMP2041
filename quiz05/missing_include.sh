#!/bin/sh
temp1='#include.*.h'
temp2='<.*>'

for file in $@
do
    cat $file| 
    while read line
    do
        if [[ $line =~ $temp1 ]]
        then
            if ! [[ $line =~ $temp2 ]]
            then
                check=$(echo "$line"| cut -d' ' -f2|sed 's/\"//g')
                if ! [[ -f $check ]]
                then
                    echo "$check included into $file does not exist"
                fi
            fi
        fi
    done
done
                
    
