#!/usr/bin/perl
use strict;
use warnings;

open(my $fh, ">>Arcology.rss") or die "File:$!";
my $i = 0;
while($i < $#ARGV+1){
	print $fh "\t\t<item>\n";
	print $fh "\t\t\t<title> $ARGV[$i] </title>\n";
	print $fh "\t\t\t<description> $ARGV[$i] </description>\n";
	print $fh "\t\t\t<link>http://offsite.obscuritus.ca/Arcology/$ARGV[$i]</link>\n";
	print $fh "\t\t\t<guid>http://offsite.obscuritus.ca/Arcology/$ARGV[$i]</guid>\n";
	my $length = `ls -l $ARGV[$i] |cut -d ' ' -f 5`;
	chomp($length);
	print $fh "\t\t\t<enclosure url=\"http://offsite.obscuritus.ca/Arcology/$ARGV[$i]\" length=\"$length\" type=\"audio/mpeg\" />\n";
	
	$i++;
	print $fh "\t\t</item>\n";
}
print $fh "\t</channel>\n";
print $fh "</rss>";
