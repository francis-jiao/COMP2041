#!/usr/bin/perl -w

open $FILE, '>', $ARGV[2] or die $!;

@a = ($ARGV[0]..$ARGV[1]);
for $i (@a){
    print $FILE "$i\n";
}
close($FILE);

