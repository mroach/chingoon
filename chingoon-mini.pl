#!/usr/bin/env perl
my $chins = shift || 0;
print " __________\n(--[ .]-[ .]\n";
if (!$chins) { print "(_______O__)\n"; exit 0 }
print "(       O  )\n";
while (--$chins) { print "(          )\n"; }
print "(__________)\n";
