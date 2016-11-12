#!/usr/bin/perl
#tutorial: http://evc-cit.info/cit042/objnotes.html
package Employee;
use strict;
use warnings 'all';
use diagnostics;

# sub new{
#   my $class = shift;
#   print "Creating new $class\n";
#   my $self = {};
#   bless $self;
#   $self->{"name"} = "";
#   $self->{"id"} = "";
#   $self->{"age"} = 0;
#   return $self;
# }

#a better way to create "new"
#This allows the user to define the
#parameters in any way possible
sub new {
  my $class = shift;
  my $self = {@_};
  bless $self;
  return $self;
}

#A better way to write Getter and Setter in Perl
#This is a getter and setter for name
sub name{
  my $self = shift;
  if (scalar(@_) == 1)
  {
    $self->{"name"} = shift;
  }
  return $self->{"name"};
}

#This is a setter for name
sub set_name{
  my $self = shift;
  my $value = shift;

  $self->{"name"} = $value;
}

#This is a getter for name
sub get_name{
  my $self = shift;
  return $self->{"name"};
}

1;
