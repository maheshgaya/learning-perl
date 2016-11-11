#!/usr/bin/perl
#person3.pm
package Person;
use strict;
use warnings;

sub new{
  my $class = shift;
  my $self = {@_};
  bless{$self, $class};
  return $self;
}

1;
