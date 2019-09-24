#!/usr/bin/perl
use 5.026;
use strict;
use warnings;


my $datetime = "2016-04-11 20:59:03";
$datetime =~ / (\d{4} - \d{2} - \d{2})   \s  (\d{2} : \d{2} : \d{2}) /x;
my $date = $1;
my $time = $2;
print $date, "\n";
print $time, "\n";