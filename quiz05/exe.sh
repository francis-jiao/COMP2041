#!/bin/sh
temp='html$'
for file in *
do
    if [[ $file =~ $temp ]]
    then
       echo $file
    fi
done

