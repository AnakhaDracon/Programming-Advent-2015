#!/usr/bin/perl
use List::Util qw( min max );

#Vixen can fly 8 km/s for 8 seconds, but then must rest for 53 seconds.
#Blitzen can fly 13 km/s for 4 seconds, but then must rest for 49 seconds.
#Rudolph can fly 20 km/s for 7 seconds, but then must rest for 132 seconds.
#Cupid can fly 12 km/s for 4 seconds, but then must rest for 43 seconds.
#Donner can fly 9 km/s for 5 seconds, but then must rest for 38 seconds.
#Dasher can fly 10 km/s for 4 seconds, but then must rest for 37 seconds.
#Comet can fly 3 km/s for 37 seconds, but then must rest for 76 seconds.
#Prancer can fly 9 km/s for 12 seconds, but then must rest for 97 seconds.
#Dancer can fly 37 km/s for 1 seconds, but then must rest for 36 seconds.

$second = 0;
$done = 1000;

# distance/tick, time travel, time rest, timer, distance total, points
@comet = (14, 10, 127, 0, 0, 0);
@dancer = (16, 11, 162, 0, 0, 0);

while($second < $done)
{
    $second++;
    
    $comet[3]++;
    if($comet[3] <= $comet[1])
    {
        $comet[4] = $comet[0] + $comet[4];
    }
    elsif ($comet[3] < $comet[1] + $comet[2])
    {
        #resting
    }
    else
    {
        $comet[3] = 0
    }
    
    $dancer[3]++;
    if($dancer[3] <= $dancer[1])
    {
        $dancer[4] = $dancer[0] + $dancer[4];
    }
    elsif ($dancer[3] < $dancer[1] + $dancer[2])
    {
        #resting
    }
    else
    {
        $dancer[3] = 0
    }
    
    @distance = ($comet[4], $dancer[4]);
    
    my $maxValue = max @distance;
    my @index = grep $distance[$_] eq $maxValue , 0 .. 1;
    print "Max: " . $maxValue . "::" . $index[0] . "\n";
    for my $j (0 .. $#index)
    {
        if($index[$j]== 0)
        {
            $comet[5]++;
        }
        if($index[$j]== 1)
        {
            $dancer[5]++;
        }
    }
}

print $comet[5] . "\n";
print $dancer[5] . "\n";