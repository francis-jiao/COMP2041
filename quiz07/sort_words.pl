#!/usr/bin/perl -w

foreach $line (<STDIN>){
    $line =~ s/\n//g;
    @array = split(/ /,$line);
    @new = sort @array;
    print "@new";
    print "\n";
}
    
