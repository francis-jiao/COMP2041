#!/usr/bin/perl 
open $file, '<', $ARGV[0] or die;
foreach $line (<$file>){
    @array = $line =~ s/[0-9]/#/g;
    print "@array\n";
    @array2 = $line =~ /[a-zA-Z]+/g;
    print "@array2\n";
}
close($file);
