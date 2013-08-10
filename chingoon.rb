#!/usr/bin/env ruby

if ARGV[0] !~ /^\d*$/ then
  raise SyntaxError, "Invalid Chins Argument"
end

chins = ARGV[0].to_i

puts <<DONGS
 __________
(--[ .]-[ .]
DONGS


case chins
when 0
  puts '(_______O__)'
else
  puts '(       O  )'
  (chins - 1).times do
    puts '(          )'
  end
  puts '(__________)'
end
