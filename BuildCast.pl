#!/usr/bin/perl
use strict;
use warnings;
use Time::localtime;

open(my $fh, ">>$ARGV[0].rss") or die "File:$!";

print $fh "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print $fh "<rss version=\"2.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\">\n";
print $fh "\t<channel>\n";
print $fh "\t\t<title>$ARGV[0]</title>\n";
print $fh "\t\t<description>$ARGV[1]</description>\n";
print $fh "\t\t<link>$ARGV[2]<link>\n";
print $fh "\t\t<atom:link href=\"$ARGV[2]/$ARGV[0].rss\" rel=\"self\" type=\"application/rss+xml\" />\n";
my $monthday = localtime->mday();
my $month = localtime->mon() + 1;
my $year = localtime->year() + 1900;
my $hour = localtime->hour();
my $min = localtime->min();
my $sec = localtime->sec();
print $fh "\t\t<pubDate>$monthday $month $year $hour:$min:$sec </pubDate>\n";
print $fh "\t\t<lastBuildDate>$monthday $month $year $hour:$min:$sec </lastBuildDate>\n";
