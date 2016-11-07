#!/usr/bin/perl
# header
use strict;
use warnings;
package Learning::chapter::08;
=begin comment
Subroutine
=end comment
=cut

sub setup; sub hey_there;

setup;
hey_there;


sub setup{
  print "Hello World!\n";
}

sub hey_there{
  print "Hey there\n";
}

yeah();

sub yeah{
  print "yeaaaaahhhh!\n";
}

total(1..100);
total(1,2,3,4,5);
#Parameters and Arguments
sub total{
  my $total = 0;
  $total += $_ for @_;
  print "The total is $total\n";
}

my $sum = calc(1..50);
print "The sum is $sum\n";
#return value
sub calc{
  my $total = 0;
  $total += $_ for @_;

  $total;
}

=begin comment
Subroutine prototypes
print mysub "one", "two";
means:
  1. print(mysub("one", "two"));
  2. print(mysub("one"), "two");
=end comment
=cut
