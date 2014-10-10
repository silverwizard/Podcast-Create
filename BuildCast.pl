#!/usr/bin/perl
use strict;
use warnings;
use POSIX qw(strftime);

open(my $fh, ">>$ARGV[0].rss") or die "File:$!";

print $fh "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print $fh "<rss version=\"2.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\">\n";
print $fh "\t<channel>\n";
print $fh "\t\t<title>$ARGV[0]</title>\n";
print $fh "\t\t<description>$ARGV[1]</description>\n";
print $fh "\t\t<link>http://$ARGV[2]</link>\n";
print $fh "\t\t<atom:link href=\"http://$ARGV[2]/$ARGV[0].rss\" rel=\"self\" type=\"application/rss+xml\" />\n";
my $todaydate =  strftime("%a, %d %b %Y %H:%M:%S %z", localtime(time()));
print $fh "\t\t<pubDate>$todaydate</pubDate>\n";
print $fh "\t\t<lastBuildDate>$todaydate</lastBuildDate>\n";
