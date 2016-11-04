#!/usr/bin/perl
# header
use strict; #this enforces you to declare variables before using them
use warnings;
package Learning::chapter::0102;
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
