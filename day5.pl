#!/usr/bin/perl
#use List::Util qw( min max );

#A nice string is one with all of the following properties:

#It contains at least three vowels (aeiou only), like aei, xazegov, or aeiouaeiouaeiou.
#It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
#It does not contain the strings ab, cd, pq, or xy, even if they are part of one of the other requirements.

open(DATA, "<day5Input.txt") or die "Couldn't open file file.txt, $!";
$count3 = 0;

while(<DATA>)
{
    $nice++ if (/(..).*\1/ && /(.).\1/);
    if(m/(\w)\1/)
    {
        $count++;
        #print $_ . "\n";
        if(m/ab|cd|pq|xy/)
        {
            $count2++;
        }
        else
        {
            if(m/[aeiou].*[aeiou].*[aeiou]/)
            {
                #print $_;
                $count3++;
            }
        }
    }
}

print $count3 . "\n" . $nice . "\n";