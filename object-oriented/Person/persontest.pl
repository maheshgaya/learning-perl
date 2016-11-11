#!/usr/bin/perl
#Tutorial from: https://www.tutorialspoint.com/perl/perl_object_oriented.htm
use Person;
use strict;
use warnings 'all';
use diagnostics;

my $object = new Person( "Mahesh", "Gaya", 23234345);
# Get first name which is set using constructor.
my $firstName = $object->getFirstName();

print "Before Setting First Name is : $firstName\n";

# Now Set first name using helper function.
$object->setFirstName( "Hello World" );

# Now get first name set by helper function.
$firstName = $object->getFirstName();
print "Before Setting First Name is : $firstName\n";
