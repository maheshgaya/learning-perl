#!/usr/bin/perl
use strict;
use warnings;

my $a = [];
my $b = {};
my $c = \1;
my $d = \$c;

print '$a is a ', ref $a, " reference\n";
print '$b is a ', ref $b, " reference\n";
print '$c is a ', ref $c, " reference\n";
print '$d is a ', ref $d, " reference\n";
