#!/usr/bin/perl
use strict;
use warnings 'all';
use diagnostics;

use Employee;
use Salaried;

my $worker = Employee->new();

#first version
$worker->set_name("Teddy Bear");
my $test = $worker->get_name();
print "Worker's name is $test\n";

#second version (improved)
$worker->name("Mahesh Gaya");
$test = $worker->name();
print "Worker's name is $test\n";

#using the better version of "new"
my $worker2 = Employee->new(
  "name" => "Burger King",
  "id" => 1234,
  "age" => 40
);

print $worker2->name()," is the new employee\n";

#using salaried
my $worker3 = Salaried->new(
    "name" => "John Cena",
    "id" => 1234,
    "age" => 40,
    "salary" => 3000
);

$test = $worker3->name();
my $amount = $worker3->annual_wage();
print "Worker $test earns $amount dollars per year\n";
