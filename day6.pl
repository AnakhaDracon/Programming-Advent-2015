#!/usr/bin/perl
#use List::Util qw( min max );

open(DATA, "<day6Input.txt") or die "Couldn't open file file.txt, $!";

my @lights;
my @bright;
$lightsOn = 0;
$brightness = 0;

for $i (0 .. 999)
{
    for $j (0 .. 999)
    {
        $lights[$i][$j] = 0;
        $bright[$i][$j] = 0;
    }
}

while(<DATA>)
{
    #turn on 887,9 through 959,629
    if(m/turn on (\d+),(\d+) through (\d+),(\d+)/)
    {
        #print $1 . "," . $2 . " and " . $3 . "," . $4 . "\n";
        for $i ($1 .. $3)
        {
            for $j ($2 .. $4)
            {
                $lights[$i][$j] = 1;
                $bright[$i][$j]++;
            }
        }
    }
    
    if(m/turn off (\d+),(\d+) through (\d+),(\d+)/)
    {
        #print $1 . "," . $2 . " and " . $3 . "," . $4 . "\n";
        for $i ($1 .. $3)
        {
            for $j ($2 .. $4)
            {
                $lights[$i][$j] = 0;
                $bright[$i][$j]--;
                if($bright[$i][$j] < 0)
                {
                    $bright[$i][$j] = 0
                }
            }
        }
    }
    
    if(m/toggle (\d+),(\d+) through (\d+),(\d+)/)
    {
        #print $1 . "," . $2 . " and " . $3 . "," . $4 . "\n";
        for $i ($1 .. $3)
        {
            for $j ($2 .. $4)
            {
                $lights[$i][$j] ^= 1;
                $bright[$i][$j] += 2;
            }
        }
    }
}

for $i (0 .. 999)
{
    for $j (0 .. 999)
    {
        if($lights[$i][$j] == 1)
        {
            $lightsOn++;
        }
        $brightness += $bright[$i][$j];
    }
}

print $lightsOn . "\n" . $brightness;