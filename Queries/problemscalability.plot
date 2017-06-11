set title "Problem Scalability, $PS$, for each environment density $p$, for each algorithm"
set xlabel "Environment Density ($p$)"
set ylabel "Problem Scalability ($PS$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome 
set output "problemscalability.tex"
plot   "problemscalability.dat" using 1:4 title 'Na\"ive' with lines, \
	"problemscalability.dat" using 1:2 title 'Desert Ant' with lines, \
	"problemscalability.dat" using 1:3 title 'Honey Bee' with lines, \
		"problemscalability.dat" using 1:5 title 'Expected Scalability' with lines

reset

set title "Problem Scalability, $PS$, for each environment density $p$, for each algorithm"
set xlabel "Environment Density ($p$)"
set ylabel "Problem Scalability ($PS$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "problemscalability.eps"
plot   "problemscalability.dat" using 1:4 title 'Na\"ive' with lines, \
	"problemscalability.dat" using 1:2 title 'Desert Ant' with lines, \
	"problemscalability.dat" using 1:3 title 'Honey Bee' with lines, \
		"problemscalability.dat" using 1:5 title 'Expected Scalability' with lines, 
reset