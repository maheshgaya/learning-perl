#!/usr/bin/perl
# header
use strict; #this enforces you to declare variables before using them
use warnings;
package Learning::chapter::03;

=begin comment
This chapter is about lists, arrays, stacks and hash tables
=end comment
=cut
=begin comment
List in perl is ()
e.g. (43, "Hello", "World", 69)
=end comment
=cut

sub fun_with_list{
  print("Hello ", "World", "\n");
  print(12, 23, 34, "\n");
  print("Hello ", "World ", 69, "\n");
}

&fun_with_list;

=begin comment
Complex List
=end comment
=cut

sub fun_with_complex_list{
  print('one', 'two', 'three', 'four', "\n");
  #The above can be written like
  print qw/one two three four/, "\n";
  print qw(one two three four), "\n";
  print qw<one two three four>, "\n";
  print qw{one two three four}, "\n";
  print qw[one two three four], "\n";
  print qw|one two three four|, "\n";

  #The one below has no differences
  #perl flattens lists
  print(3, 8, 5, 15, "\n");
  print((3,8),(5,15), "\n");
  print(3,(8,5),15, "\n");

  #similarly
  print('one', 'two', 'three', 'four', "\n");
  print(('one', 'two', 'three', 'four', "\n"));
  print(qw(one two theer), 'four', "\n");
  print(qw(one two), q(three), 'four', "\n");
  print(qw(one two three four), "\n");

  #Accessing list values
  print(('salt', 'vinegar', 'mustard', 'pepper')[2], "\n");

  #List Slices
  print((19, 68, 47, 60, 53, 51, 58, 55, 47)[(4,5,6)], "\n");
  print((19, 68, 47, 60, 53, 51, 58, 55, 47)[4,5,6], "\n");

  my $first; my $second;
  ($first, $second) = (1,3);
  print (("heads ", "shoulders ", "knees ", "toes ")[$first, $second], "\n");

  #trying something fun
  ($first, $second) = ($second, $first); #this switches the place
  print (("heads ", "shoulders ", "knees ", "toes ")[$first, $second], "\n");

}

&fun_with_complex_list;

=begin comment
Using range
=end comment
=cut
sub fun_with_range{
  print("Counting up: ", (1..6), "\n");
  print("Counting down: ", (6..1), "\n");
  print("Counting down the right way: ", reverse(1..6), "\n");

  #this also works with alphabets
  print "alphabets: ", ('a'..'m'), "\n";
  print "alphabets in reverse: ", reverse('n'..'z'), "\n";

  #then how about alphanumeric?
  print("Going from 3 to z: ", (3..'z'), "\n");
  #The above will not work as Perl interprets it as
  #print("Going from 3 to z: ", (3..0), "\n");
  print "Going from z to 3: ", ('z'..3), "\n";
}
&fun_with_range;

=begin comment
Using Arrays
=end comment
=cut
sub fun_with_arrays{
  my @days;
  @days = qw(Monday Tuesday Wednesday Thursday Friday Saturday Sunday);
  print @days, "\n"; #list context
  #assigning an array to a scalar variable
  my $scalar = @days; #scalar context
  #this will print the number of elements in the array
  print "This is a scalar variable: ", $scalar, "\n";
  #this will print all the values in the array
  print "@days\n";

  #adding to an array

  my @workdays = qw(Monday Tuesday Wednesday Thursday Friday Saturday);
  my @weekends = qw(Saturday Sunday);
  my @alldays = (@workdays, @weekends);
  print(@alldays, "\n");

  my @num1 = 1..5;
  my @num2 = (0, @num1, 6..10);
  print (@num2, "\n");

  #accessing single elements
  (my $first, my $second, my $third) = @days; #Declaration in list is allowed. Wow!
  print("First day is ", $first, "\n"); #Monday
  print("Second day is ", $second, "\n"); #Tuesday
  print("Third day is ", $third, "\n"); #Wednesday

  print(@days[6], "\n"); #This prints Sunday

  #accessing multiple elements
  print(@days[0,2,5..6], "\n");

  #running through Arrays
  for my $element (@days){
    print $element, "\n";
  }

  #Array Function
  my @count = (1..5);
  for (reverse(@count)){
    print "$_...\n";
    sleep 1;
  }
  print "BLAST OFF!\n";

}
&fun_with_arrays;

=begin comment
Pop and Push to an array
=end comment
=cut
sub fun_with_stack{
  #we can use the array as a stack
  my @coffee = ("Macchiato", "Cappuccino", "Americano", "Latte");
  @coffee = sort @coffee; #sorts the array
  print(@coffee, "\n");
  push @coffee, "Mocha";
  print(@coffee, "\n");
  pop(@coffee);
  pop(@coffee);
  print(@coffee, "\n");

}

&fun_with_stack;

=begin comment
Using Hashes
=end comment
=cut
sub fun_with_hashes{
  my %where;
  %where = (
    "Gary", "Dallas",
    "Lucy", "Exeter",
    "Ian", "Reading",
    "Samantha", "Oregon",
  );
  print (%where, "\n");

  %where = (
    "Gary" => "Dallas",
    "Lucy" => "Exeter",
    "Ian" => "Reading",
    "Samantha" => "Oregon",
  );
  print(%where, "\n");

  my @array = qw(Gary Dallas Lucy Exeter Ian Reading Samantha Oregon);
  @array = %where;
  print (@array, "\n");

  my $place = "Oregon";
  my %who = reverse %where;
  print "Gary lives in ", $where{Gary}, "\n";
  print "Ian lives in $where{Ian}\n";
  print "$who{Exeter} lives in Exeter\n";
  print "$who{$place} lives in $place\n";

  #assigning new values and adding new values
  $where{Eva} = "Denver";
  $where{Samantha} = "California";
  $where{Lucy} = "Tokyo";
  $where{Gary} = "Las Vegas";
  $where{Ian} = "Southampton";

  delete $where{Lucy};
  for (keys %where){
    print "$_ lives in $where{$_}\n";
  }

}

&fun_with_hashes;
