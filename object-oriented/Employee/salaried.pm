#!/usr/bin/perl
package Salaried;
use strict;
use warnings 'all';
use diagnostics;

our @ISA = "Employee";

sub new {
  my $class = shift;
  my $self = Employee->new(@_);
  bless $self, $class;
  return $self;
}

sub annual_wage{
  my $self = shift;
  return $self->{"salary"} * 12;
}

1;
