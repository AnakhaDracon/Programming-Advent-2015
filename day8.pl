#!/usr/bin/perl
#use List::Util qw( min max );

open(DATA, "<day8Input.txt") or die "Couldn't open file file.txt, $!";
#"" is 2 characters of code (the two double quotes), but the string contains zero characters.
#"abc" is 5 characters of code, but 3 characters in the string data.
#"aaa\"aaa" is 10 characters of code, but the string itself contains six "a" characters and a single, escaped quote character, for a total of 7 characters in the string data.
#"\x27" is 6 characters of code, but the string itself contains just one - an apostrophe ('), escaped using hexadecimal notation.
while(<DATA>)
{
    
}

close(DATA);