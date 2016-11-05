#!/usr/bin/perl
# header
use strict; #this enforces you to declare variables before using them
use warnings;
package Learning::chapter::04;
=begin comment
This chapter is about loops and decisions
=end comment
=cut

#Multiple currency converter
sub calculate_currency{
  my ($value, $from, $to, $rate, %rates);
  %rates = (
    pounds => 1,
    dollars => 1.6,
    marks => 3.0,
    "french francs" => 10.0,
    yen => 174.8,
    "swiss francs" => 2.43,
    drachma => 492.3,
    euro => 1.5
  );

  print "Enter your starting currency: ";
  $from = <STDIN>;
  print "Enter your target currency: ";
  $to = <STDIN>;
  print "Enter your amount: ";
  $value = <STDIN>;
  chomp($from, $to, $value);
  #if statement
  if (not exists $rates{$to}){
    die "I don't know anything about $to as a currency\n";
  }
  if (not exists $rates{$from}){
    die "I don't know anything about $from as a currency";
  }
  $rate = $rates{$to} / $rates{$from};

  print "$value $from is ", $value*$rate, " $to.\n";
}

#&calculate_currency;

=begin comment
logical operators
=end comment
=cut
sub fun_with_locgical_operators{
  if (()){
    print "1. Yes it is true\n";
  } else {
    print "1. Nope it is NOT true\n";
  }
  if ((())){
    print "2. Yes it is true\n";
  } else {
    print "2. Nope it is NOT true\n";
  }
}

&fun_with_locgical_operators;

sub comparison{
  #for numbers
  my $number1 = 900;
  my $number2 = 900;
  if ($number1 > $number2){
    print "$number1 is greater than $number2\n";
  } elsif ($number1 == $number2){
    print "$number1 is equal to $number2\n";
  } elsif ($number1 < $number2){
    print "$number1 is less than $number2\n";
  }

  #for strings
  #use gt, le, eq, ne
  my $a = "hello";
  my $b = "world";

  if ($a gt $b){
    print "$a is greater than $b\n";
  } elsif ($a eq $b){
    print "$a is equal to $b\n";
  } elsif ($a le $b){
    print "$a is less than $b\n";
  }

  #checking for password
  my $password = "helloworld";
  print "Enter the password: ";
  my $guess = <STDIN>;
  chomp $guess;
  #test if the variable has a value then show results
  if (defined $guess){
    if ($password eq $guess){
      print "Pass, friend.\n";
    }
    if ($password ne $guess){
      die "Go away, imposter!\n";
    }
  }

}

&comparison;

=begin comment
logical conjunctions
=end comment
=cut
sub conjunction{
  my $a = 0;
  my $b = 1;
  if ($a and $b){
    print ($a, " and ", $b, " is true\n");
  }elsif ($a or $b){
    print ($a, " or ", $b, " is true\n");
  }
  if (not $a){
    print($a, " is false\n");
  }
  if (not $b){
    print($b, " is false\n");
  }
}

&conjunction;


=begin comment
for loops
=end comment
=cut
sub for_loop{
  my @array = (1,3,5,7,9);
  my $i;
  for $i (@array){
    print $i, "\n";
  }

  foreach $i (@array){
    print "Element: ", $i, "\n";
  }

  #use it for arrays
  my @word_array = qw(the quick brown fox ran over the lazy dog);
  for (6, 3, 8, 2, 5, 4, 0, 7){
    print "$word_array[$_] ";
  }
  print "\n";

  #use it for hashes
  my %hash = (car => "voiture", coach => "car", bus => "autobus");
  for (keys %hash){
    print "English: $_\n";
    print "French: $hash{$_}\n\n";
  }

  #aliases and values
  my @numbers = (1..10);
  foreach (@numbers){
    $_++;
  }
  print "Array is now: @array\n";
}

&for_loop;


=begin comment
Statement modifiers
=end comment
=cut
sub if_statement{
  my $error;
  #$error = "error";
  die "something wicked happend " if $error;
  my $total = 0;
  $total += $_ for @ARGV;
  print "The total is $total\n"; # perl chapter04.pl 15 62 3 8 4
}

&if_statement;

=begin comment
looping While...
=end comment
=cut
sub while_loop{
  my $countdown = 5;
  while ($countdown > 0){
    print "counting down: ", $countdown, "\n";
    $countdown--;
  }
}
&while_loop;

=begin comment
do while loop
=end comment
=cut
sub do_while_loop{
  do {
    print "Enter something (press 'Return' to quit): ";
    $_ = <STDIN>;
    chomp;
    my $sdrawkcab = reverse $_;
    print "$sdrawkcab\n";
  } while ($_);
  print "!enod lla\n";
}
&do_while_loop;
