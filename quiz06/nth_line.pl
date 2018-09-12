#!/usr/bin/perl -w

open $FILE,'<', $ARGV[1] or die $!;
$i = 1;
foreach $line (<$FILE>) {
    if($i == $ARGV[0]){
        print "$line";
        last;
    }
    $i += 1;
}
close(FILE);
