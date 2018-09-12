#!/usr/bin/perl

@array = ();
open $file, '<', $ARGV[0] or die $!;
foreach $line (<$file>){
    $line =~ s/[0-9]/#/g;
    push(@array, $line);
}
close($file);
$txt = '';
foreach $i (@array){
    $txt = $txt.$i;
}
open $filename, '>', $ARGV[0] or die $!;

print $filename $txt;
close($filename);


