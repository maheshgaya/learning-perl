#!/usr/bin/perl
#bless1.pl
use strict;
use warnings;

my $a = {};
print '$a is a ', ref $a, " reference\n";
bless($a, "Person");
print '$a is a ', ref $a, " reference\n";
