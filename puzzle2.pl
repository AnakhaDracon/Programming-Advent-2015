#!/usr/bin/perl
use List::Util qw( min max );

open(DATA, "<puzzle2Input.txt") or die "Couldn't open file file.txt, $!";
my $sqFt = 0;
my $ribbon = 0;
my $lines = 0;
my $adding = 0;

while(<DATA>){
	$lines++;
	#print "$_";
	$_ =~ m/(\d+)x(\d+)x(\d+)/;
	my ($length, $width, $height) = ($1, $2, $3);
	$adding += (2 * $length * $width) + (2 * $width * $height) + (2 * $height * $length);
	
	@sides = ($length * $width, $width * $height, $height * $length);
	my $smallest = min @sides;
	$adding += $smallest;
	
	$sqFt += $adding;
	
	@parts = ($length + $width, $width + $height, $height + $length);
	$addRibbon += 2 * min @parts;
	$addRibbon += $length * $width * $height;
	$ribbon += $addRibbon;
	
	$adding = 0;
	$addRibbon = 0;
}

print $sqFt . "\n" . $ribbon . "\n";
close(DATA);