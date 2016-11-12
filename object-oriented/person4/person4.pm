#!/usr/bin/perl
package Person;
#person4.pm
use strict;
use warnings 'all';
use diagnostics;

sub new{
  my $class = shift;
  my $self = {@_};
  bless{$self, $class};
  return $self;
}

sub surname{
  my $self = shift;
  return $self->{surname};
}

1;
