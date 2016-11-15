#!/usr/bin/perl
package HelloWorldCGI;
use strict;
use warnings 'all';
use diagnostics;
use CGI;

#To configure Apache CGI on MAC OS X
#http://www.cgi101.com/book/connect/mac.html

print "Content-type: text/plain\n\n";
print "Hello CGI World!\n";

my $q = CGI->new;
my $rhost = $q->remote_host;

print "You're calling from $rhost\n";
