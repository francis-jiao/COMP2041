#!/bin/sh
temp='htm$'
for file in *
do
    if [[ $file =~ $temp ]]
    then
        new=$(echo "$file" | sed 's/.htm/.html/g')
        if [ -f "$new" ]
        then 
                echo "$new exists"
                exit 1
        else
                mv "$file" "$new"
        fi
    fi
done

