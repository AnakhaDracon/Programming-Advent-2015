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
$done = 2503;

# distance/tick, time travel, time rest, timer, distance total, points
@vixen = (8, 8, 53, 0, 0, 0);
@blitzen = (13, 4, 49, 0, 0, 0);
@rudolph = (20, 7, 132, 0, 0, 0);
@cupid = (12, 4, 43, 0, 0, 0);
@donner = (9, 5, 38, 0, 0, 0);
@dasher = (10, 4, 37, 0, 0, 0);
@comet = (3, 37, 76, 0, 0, 0);
@prancer = (9, 12, 97, 0, 0, 0);
@dancer = (37, 1, 36, 0, 0, 0);

while($second < $done)
{
    $second++;
    $vixen[3]++;
    if($vixen[3] <= $vixen[1])
    {
        $vixen[4] = $vixen[0] + $vixen[4];
    }
    elsif ($vixen[3] < $vixen[1] + $vixen[2])
    {
        #resting
    }
    else
    {
        $vixen[3] = 0
    }
    
    $blitzen[3]++;
    if($blitzen[3] <= $blitzen[1])
    {
        $blitzen[4] = $blitzen[0] + $blitzen[4];
    }
    elsif ($blitzen[3] < $blitzen[1] + $blitzen[2])
    {
        #resting
    }
    else
    {
        $blitzen[3] = 0
    }
    
    $rudolph[3]++;
    if($rudolph[3] <= $rudolph[1])
    {
        $rudolph[4] = $rudolph[0] + $rudolph[4];
    }
    elsif ($rudolph[3] < $rudolph[1] + $rudolph[2])
    {
        #resting
    }
    else
    {
        $rudolph[3] = 0
    }
    
    $cupid[3]++;
    if($cupid[3] <= $cupid[1])
    {
        $cupid[4] = $cupid[0] + $cupid[4];
    }
    elsif ($cupid[3] < $cupid[1] + $cupid[2])
    {
        #resting
    }
    else
    {
        $cupid[3] = 0
    }
    
    $donner[3]++;
    if($donner[3] <= $donner[1])
    {
        $donner[4] = $donner[0] + $donner[4];
    }
    elsif ($donner[3] < $donner[1] + $donner[2])
    {
        #resting
    }
    else
    {
        $donner[3] = 0
    }
    
    $dasher[3]++;
    if($dasher[3] <= $dasher[1])
    {
        $dasher[4] = $dasher[0] + $dasher[4];
    }
    elsif ($dasher[3] < $dasher[1] + $dasher[2])
    {
        #resting
    }
    else
    {
        $dasher[3] = 0
    }
    
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
    
    $prancer[3]++;
    if($prancer[3] <= $prancer[1])
    {
        $prancer[4] = $prancer[0] + $prancer[4];
    }
    elsif ($prancer[3] < $prancer[1] + $prancer[2])
    {
        #resting
    }
    else
    {
        $prancer[3] = 0
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
    
    @distance = ($vixen[4], $blitzen[4], $rudolph[4], $cupid[4], $donner[4], $dasher[4], $comet[4], $prancer[4], $dancer[4]);
    
    my $maxValue = max @distance;
    my @index = grep $distance[$_] eq $maxValue , 0 .. 8;
    #print "Max: " . $maxValue . "::" . scalar @index . "\n";
    if(scalar @index > 1)
    {
        print $index[0] . ":" . $index[1] . "\n";
    }
    for my $j (0 .. $#index)
    {
        if($index[$j] == 0)
        {
            $vixen[5]++;
        }
        if($index[$j]== 1)
        {
            $blitzen[5]++;
        }
        if($index[$j]== 2)
        {
            $rudolph[5]++;
        }
        if($index[$j]== 3)
        {
            $cupid[5]++;
        }
        if($index[$j]== 4)
        {
            $donner[5]++;
        }
        if($index[$j]== 5)
        {
            $dasher[5]++;
        }
        if($index[$j]== 6)
        {
            $comet[5]++;
        }
        if($index[$j]== 7)
        {
            $prancer[5]++;
        }
        if($index[$j]== 8)
        {
            $dancer[5]++;
        }
    }
}

print $vixen[5] . "\n";
print $blitzen[5] . "\n";
print $rudolph[5] . "\n";
print $cupid[5] . "\n";
print $donner[5] . "\n";
print $dasher[5] . "\n";
print $comet[5] . "\n";
print $prancer[5] . "\n";
print $dancer[5] . "\n";