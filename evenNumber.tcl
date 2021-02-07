set sum 0;
set evenList {};

for {set i 1} {$i < 101} {incr i} {
    if {$i%2 == 0} {
        lappend evenList $i;
    }
}

for {set j 0} {$j < [llength $evenList]} {incr j} {
    set sum [expr $sum+[lindex $evenList $j]];
}
puts "Sum is: $sum";