#!/usr/bin/perl
# header
use strict;
use warnings;
package Learning::chapter::06;
=begin comment
Files and Data
=end comment
=cut

sub simple_file{
  print STDOUT "Hello, World.\n";
  #open FH, $filename or die $!;
  open FILE, 'README.md' or die "I think we have a problem here $!";
  my $lineno = 1;
  while (<FILE>){
    print $lineno++;
    print ": $_";
  }

  #Filters
  #Run the code as "perl chapter06.pl  chapter05.pl chapter04.pl chapter03.pl" This is very long
  my $current = "";
  while (<>){
    if ($current ne $ARGV){
      $current = $ARGV;
      print "\n\t\tFile: $ARGV\n\n";
      $lineno = 1;
    }
    print $lineno++;
    print ": $_";
  }
}
#&simple_file();

sub write_to_file{
  #This one will overwrite anything that is in summary.txt
  #perl chapter06.pl  chapter05.pl chapter04.pl chapter03.pl > summary.txt

  #This one will add to summary.txt
  #perl chapter06.pl  chapter01-02.pl >> summary.txt

  #For inputting files use
  # perl chapter06.pl < summary.txt

  #we can also use this in perl
  #open FH, "< $filename";

  #COPY a file
  my $source = shift @ARGV;
  my $destination = shift @ARGV;

  open IN, $source or die "Can't read source file $source: $!\n";
  open OUT, ">$destination" or die "Can't write on file $destination: $!\n";

  print "Copying $source to $destination\n";

  while (<IN>) {
    print OUT $_;
  }

}

&write_to_file(); # "perl chapter06.pl  chapter01-02.pl output.txt"
