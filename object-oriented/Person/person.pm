package Person;
use strict;
use warnings 'all';
use diagnostics;

our $self;

sub new {
  my $class = shift;
  $self = {
      _firstName => shift,
      _lastName  => shift,
      _ssn       => shift,
  };
  # Print all the values just for clarification.
  print "First Name is $self->{_firstName}\n";
  print "Last Name is $self->{_lastName}\n";
  print "SSN is $self->{_ssn}\n";
  bless $self, $class;
  return $self;
}

sub setFirstName {
  my ( $self, $firstName ) = @_;
  $self->{_firstName} = $firstName if defined($firstName);
  return $self->{_firstName};
}

sub getFirstName {
  return $self->{_firstName};
}

1;
