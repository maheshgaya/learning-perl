#!/usr/bin/perl
#person2.pm
# header
package Person;
use strict;
use warnings;

sub new{
  my $class = shift;
  my $self = {};
  bless($self, $class);
  return $self;
}

1;
