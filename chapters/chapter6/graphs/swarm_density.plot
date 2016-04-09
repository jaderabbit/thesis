set title "Prioritized items over time for each algorithm over swarm density ($c$)"
set xlabel "Swarm Density ($c$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome 
set output "gold_robots.tex"
plot   "gold_robots.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_robots.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_robots.dat" using 1:3 title 'Honey Bee' with lines, \

reset

set title "Non-prioritized items over time for each algorithm over swarm density"
set xlabel "Swarm Density ($c$)"
set ylabel "Non-prioritized items over time ($\\tau$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome
set output "waste_robots.tex"
plot   "waste_robots.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_robots.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_robots.dat" using 1:3 title 'Honey Bee' with lines
	
reset
set title "Prioritized items over time for each algorithm over swarm density ($c$)"
set xlabel "Swarm Density ($c$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome
set output "leftoverscrap.tex"
plot   "gold_robots.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_robots.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_robots.dat" using 1:3 title 'Honey Bee' with lines, \
	
reset