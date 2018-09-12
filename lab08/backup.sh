#!/bin/sh

number=0;
while [ -e .$1.$number ]
do
    number=$(($number+1))
done 
    
number=$(($number-1))
if [ -e .$1.$number ]
then
    number=$(($number+1))
    cp $1 .$1.$number
    echo "Backup of '$1' saved as '.$1.$number'"
else
    cp $1 .$1.0
    echo "Backup of '$1' saved as '.$1.0'"
fi
    
    
