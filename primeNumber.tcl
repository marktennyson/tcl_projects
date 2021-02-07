#!/usr/bin/tclsh

set j 0;
for {set i 2} {$i<100} {incr i} {
   for {set j 2} {$j <= [expr $i/$j] } {incr j} {
      if {  [expr $i%$j] == 0 } {
         break
      } 
   }
   if {$j >[expr $i/$j] } {
      puts "$i is prime"
   }
}