#!/usr/bin/perl
# header
package Learning::chapter::11;
use strict;
use warnings;
use Net::FTP;
=begin comment
Object Oriented Programming
=end comment
=cut

sub getReadme{
  #This gets the file README.html
  my $ftp = Net::FTP->new("ftp.cpan.org")
      or die "Could not connect: $@\n";
  $ftp->login("anonymous");
  $ftp->cwd("/pub/CPAN");
  $ftp->get("README.html");
  $ftp->close;
}
