#!usr/bin/perl

use strict;
use warnings;
use 5.010;
 

open(FILE, "<train.txt") or die "Could not open file: $!";

my $lines;
 my$words;
my $chars;

while (<FILE>) {
    $lines++;
    $chars += length($_);
    $words += scalar(split(/\s+/, $_));

}



print("lines=$lines words=$words chars=$chars\n");

