#!/usr/bin/perl
#person4test.pl
use strict;
use warnings;
use Person4;

my $object = Person->new(
  surname => "Galilei",
  forename => "Galileo",
  address => "9.81 Pisa Apts",
  occupation => "bombardier"
);

print "This person's surname is ", $object->surname, "\n";
