proc STgoon {} { return "  __________\n (--\[ .\]-\[ .\]\n (_______O__)" }
if {$n < 0} {set n 0}; if {$n > 7} {set n 7};
if {$n == 0} {return [STgoon]};
set lines [lines [STgoon]];
set chin [lindex $lines 2];
lremove lines 2;
lappend lines [regsub -all _ $chin " "];
while {[incr n -1]} {lappend lines [regsub -all {[_O]} $chin " "]};
lappend lines [regsub -all O $chin _];
join $lines \n
