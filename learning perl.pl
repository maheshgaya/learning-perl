#!/usr/bin/perl
# header
use strict; #this enforces you to declare variables before using them
use warnings;
package Learning;
#this is a one line comment

=begin comment
This is a multi-line commment
Hello world
This is Mahesh!

The Escape sequences:
Escape sequences | Meaning
-----------------|----------
\t               | Tab
\n               | Start a new line
\b               | Backspace
\a               | Alarm (rings the system bell)
\x{1F18}         | Unicode character


Bitwise Operators
Operator  | Meaning
----------|----------
&         | and
|         | or
^         | exclusice or
~         | not


Truths and Falsehood
Operator  | Meaning
----------|----------
==        | is equal to
<         | less than
>         | greater than
<=        | less than or equal to
>=        | greater than or equal to
!=        | not equal to

Special Operators
<=>    | gives 0 if equal, -1 if right hand-side is greater,
1 if left hand-side is bigger
e.g.
6 <=> 9 = -1
7 <=> 7 = 0
8 <=> 4 = 1


Boolean Operators
Operator  | Meaning | Example
----------|---------|---------
&&        | and     | 6 > 3 && 12 > 4
||        | or      | 9 > 7 || 6 > 8
!         | not     | !(2 > 3)

STRING OPERATORS
Concatenation Operators
comma or dot
e.g.
print "Print ", "this ", "form ", "\n";
print "Print " . "this " . "one " . "with " . "dot " ."\n";

Reptition Operator
print "GO! " x3, "\n";
=end comment
=cut

sub greeting{
  print("greeting\n");
  #The obvious hello world program
  print "Hello, world!\n";
  #blocks within blocks
  {
    print "This print statement is inside a block that is inside greeting\n";
    {
      print "I am inside another block\n";
    }
  }

  print("\n"); #breaks line
}

&greeting();

sub fun_with_strings{
  print("fun_with_strings\n");
  #using commas for different strings in one print statment
  print "here ", "we ", "print ", "several ", "strings.\n";
  print ("here ", "we ", "print ", "several ", "strings inside parentheses.\n");
  #single quote vs doube quote
  print("Yes \n processing in double quotes\n");
  print('No \n processing in single quotes');
  print("\n"); #breaks line
  print(qq('"Hi, this is Mahesh!"'));
  print("\n"); #breaks line
}

&fun_with_strings();

=begin comment
Binary numbers should be preceded by 0
=end comment
=cut
sub fun_with_numbers{

  print("fun_with_numbers\n");
  #binary numbers
  print("binary numbers 01101 -> ");
  print(01101);
  print("\n"); #breaks line

  #decimal numbers
  print("decimal numbers 25 -> ");
  print(25);
  print("\n"); #breaks line

  #binary numbers
  print("binary numbers 011001010110101001010 -> ");
  print(011001010110101001010);
  print("\n"); #breaks line

  #hex numbers
  print("hex numbers 0xBEEF -> ");
  print(0xBEEF);
  print("\n"); #breaks line
  print("\n"); #breaks line
}

&fun_with_numbers;

=begin comment
Using repetition in print statement
=end comment
=cut
sub fun_with_repetition{
  print "GO! " x3, "\n";
  print "Ba". "na"x(4*3), "\n";
}

&fun_with_repetition;

=begin comment
We will now use variables
=end comment
=cut
sub fun_with_variables{
  my $name = "Mahesh";
  print "My name is ", $name, "\n";
}

&fun_with_variables;

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
