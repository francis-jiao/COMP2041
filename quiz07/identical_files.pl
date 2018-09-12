#!/usr/bin/perl -w

use File::Compare;

$i = 0;
$n = 0;
while($i < $#ARGV){
    if(compare("$ARGV[$i]","$ARGV[$i+1]") == 0){
    
    }else{
        print("$ARGV[$i+1] is not identical\n");
        $n = 10;
        last;
    }
    $i++;
}

if($n != 10){
    print "All files are identical\n";
}


