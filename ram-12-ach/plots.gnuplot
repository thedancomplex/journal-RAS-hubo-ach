#!/usr/bin/gnuplot -persist

bin(x,width)=width*floor(x/width)

set ylabel "count"
set xlabel "microseconds"

set style fill pattern 0
set term postscript eps enhanced color 24




## Ach plots

binwidth=1
set output "ach-hist-1k-arm.eps"
plot './bench-ach-1k-arm.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=1
set output "ach-hist-8k-arm.eps"
plot './bench-ach-8k-arm.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "ach-hist-1k-linux.eps"
plot './bench-ach-1k-linux.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "ach-hist-8k-linux.eps"
plot './bench-ach-8k-linux.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "ach-hist-1k-preempt.eps"
plot './bench-ach-1k-preempt.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes

binwidth=.1
set output "ach-hist-8k-preempt.eps"
plot './bench-ach-8k-preempt.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



## Pipe plots


binwidth=1
set output "pipe-hist-1k-arm.eps"
plot './bench-pipe-1k-arm.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=1
set output "pipe-hist-8k-arm.eps"
plot './bench-pipe-8k-arm.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "pipe-hist-1k-linux.eps"
plot './bench-pipe-1k-linux.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "pipe-hist-8k-linux.eps"
plot './bench-pipe-8k-linux.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes



binwidth=.1
set output "pipe-hist-1k-preempt.eps"
plot './bench-pipe-1k-preempt.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes

binwidth=.1
set output "pipe-hist-8k-preempt.eps"
plot './bench-pipe-8k-preempt.dat' using (bin($1,binwidth)):(1.0) title '' lc 3 smooth freq with boxes
