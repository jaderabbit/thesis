set title "Average Time in Waiting State, $t_{wait}$, for each swarm density $c$, for Honey bee algorithm"
set xlabel "swarm density ($c$)"
set ylabel "Average Time in Waiting State ($t_{wait}$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome "" 10
set output "swarm-scalability-waitingtime.tex"
plot "swarm-scalability-waitingtime.dat" using 1:2  with lines

reset

set title "Average Time in Waiting State, $t_{wait}$, for each swarm density $c$, for Honey bee algorithm"
set xlabel "swarm density ($c$)"
set ylabel "Average Time in Waiting State ($t_{wait}$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex "" 10
set output "swarm-scalability-waitingtime.eps"
plot "swarm-scalability-waitingtime.dat" using 1:2  with lines
reset