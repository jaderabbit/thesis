set title "Swarm Scalability, $SS$, for each swarm density $c$, for each algorithm"
set xlabel "swarm density ($c$)"
set ylabel "Swarm Scalability ($SS$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome "" 10
set output "swarmscalability.tex"
plot   "swarmscalability.dat" using 1:4 title 'Na\"ive' with lines, \
	"swarmscalability.dat" using 1:2 title 'Desert Ant' with lines, \
	"swarmscalability.dat" using 1:3 title 'Honey Bee' with lines

reset

set title "Swarm Scalability, $SS$, for each swarm density $c$, for each algorithm"
set xlabel "swarm density ($c$)"
set ylabel "Swarm Scalability ($SS$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex "" 10
set output "swarmscalability.eps"
plot   "swarmscalability.dat" using 1:4 title 'Na\"ive' with lines, \
	"swarmscalability.dat" using 1:2 title 'Desert Ant' with lines, \
	"swarmscalability.dat" using 1:3 title 'Honey Bee' with lines
reset