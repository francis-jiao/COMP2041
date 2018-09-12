#!/usr/bin/perl -w


use File::Copy

$number = 0;
while(-d ".snapshot.$number"){
    $number++;
}
$number--;
@all = grep { !/^snapshot\.pl$/ } glob("*.*");
if($ARGV[0] eq "save"){
    if(-d ".snapshot.$number"){
        $number++;
        mkdir ".snapshot.$number";
        #@all = grep { !/^snapshot\.pl$/ } glob("*.*");
        foreach $file (@all){
            copy("$file",".snapshot.$number/$file") or die;
        }
        print "Creating snapshot $number\n";
    }else{
        mkdir ".snapshot.0";
        foreach $file (@all){
            copy("$file",".snapshot.0/$file") or die;
        }
        print "Creating snapshot 0\n";
    }
} elsif($ARGV[0] eq "load"){
    if(-d ".snapshot.$number"){
        $number++;
        mkdir ".snapshot.$number";
        foreach $file (@all){
            copy("$file",".snapshot.$number/$file") or die;
        }
        print "Creating snapshot $number\n";
    }else{
        mkdir ".snapshot.0";
        foreach $file (@all){
            copy("$file",".snapshot.0/$file") or die;
        }
        print "Creating snapshot 0\n";
    }
    @copy = glob "\.snapshot\.$ARGV[1]/*.*";
    foreach $file (@copy){
        @split = split /\//, $file;
        $j = $split[1];
        copy(".snapshot.$ARGV[1]/$j","$j") or die;        
    }
    print "Restoring snapshot $ARGV[1]\n";
}


