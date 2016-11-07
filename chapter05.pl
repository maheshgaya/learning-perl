#!/usr/bin/perl
# header
use strict;
use warnings;
package Learning::chapter::05;
=begin comment
Regular Expression
=end comment
=cut

sub simple_regex{
  my $found = 0;
  $_ = "Nobody wants to hurt you.. 'cept, I do hurt people sometimes, Case.";
  #without regex
  my $sought = "people";

  foreach my $word(split){
    if ($word eq $sought){
      $found = 1;
      last;
    }
  }

  if ($found){
    print "Hooray! Found the word 'people' without regex\n";
  }

  #with regex
  #=~ means bind the pattern to another string
  if ($_ =~ /people/){
    print "Hooray! Found the word 'people' with regex\n";
  }

  #simpler version for this case
  if (/people/){
    print "Hooray! Found the word 'people' with regex but in a simpler version\n";
  }

  #now with other variables
  my $gibson =
      "Nobody wants to hurt you.. 'cept, I do hurt people sometimes, Case.";
  if ($gibson !~ /fish/){
    print "There is no fish in William Gibson.\n";
  }

  if (/I do/){
    print "'I do' is in that string.\n";
  }

  if (/sometimes Case/){
    print "'sometimes Case' matched.\n";
  }

}
&simple_regex();

#Other regex in the tutorial
#http://blob.perl.org/books/beginning-perl/3145_Chap05.pdf
