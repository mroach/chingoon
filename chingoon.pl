#!/usr/bin/env perl

use strict;
use warnings;

my $chins = shift || 0;
my $scale = shift || 2;

my %components = (
    "scalp"         => { start => " ", repeat => "_", body => "________\n"  },
    "eyes"          => { start => "(", repeat => "-", body => "[ .]-[ .]\n" },
    "no_chin_mouth" => { start => "(", repeat => "_", body => "_____O__)"   },
    "chin_mouth"    => { start => "(", repeat => " ", body => "     O  )\n" },
    "chin_body"     => { start => "(", repeat => " ", body => "        )\n" },
    "chin_close"    => { start => "(", repeat => "_", body => "________)"   }
);

sub get_chin_component {
    my ($component_name) = @_;
    my $s = '';
    $s .= $components{$component_name}->{'start'};
    $s .= $components{$component_name}->{'repeat'} x $scale;
    $s .= $components{$component_name}->{'body'};
    return $s;
}

$chins = 0 unless $chins =~ m/^\d+$/;
$scale = 2 unless $scale =~ m/^\d+$/;
$scale = 2 unless $scale >= 1;

print &get_chin_component("scalp");
print &get_chin_component("eyes");

if ($chins == 0) {
  print &get_chin_component("no_chin_mouth");
  exit 0;
} else {
  print &get_chin_component("chin_mouth");
}

while (--$chins) {
  print &get_chin_component("chin_body");
}

print &get_chin_component("chin_close");
