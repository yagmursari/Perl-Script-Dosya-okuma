#!/usr/bin/perl

use strict;
use warnings;
use utf8;

my %seen;     # Hash, bir kelimeyi kaç kez gördüğünü yazması için.
my @a_word;   # array uniq words.
my $word;     # her kelimeyi tutması için değişken oluşturdum.

open(FILE,"<train.txt") or  die "cannot open input file";
while(<FILE>){ 

   $word += scalar(split(/\s+/, $_));#kelimeleri split edip ayırdı.
  
   for $word (split)
   {

   
      $word = "\U$word"; #kelimenin baş harflerini çevirdi
      $word =~ s/[\$#@~!&*()\[\];.,:?^"…'%-+ --\\+\/]//g;

      
      $seen{$word}++;   #her kelime için has oluşturdum ve onu yazdırdı

      

      

      if ($seen{$word} == 1)
      {
         push( @a_word, $word );
      }
   }
}

@a_word = sort(@a_word);
  # Kelime dizisinin içeriğini sıralar.
foreach (@a_word)
{
   print "$_ $seen{$_}\n";      # Her kelimenin  bulunma sayısını yazdırır.

}
