#!/usr/bin/perl -w

use File::Copy

$number = 0;
while(-e ".$ARGV[0].$number"){
    $number++;
}

$number--;
if(-e ".$ARGV[0].$number"){
    $number++;
    copy("$ARGV[0]",".$ARGV[0].$number") or die;
    print "Backup of '$ARGV[0]' saved as '.$ARGV[0].$number'\n";
}else{
    copy("$ARGV[0]",".$ARGV[0].0") or die;
    print "Backup of '$ARGV[0]' saved as '.$ARGV[0].0'\n";
}

