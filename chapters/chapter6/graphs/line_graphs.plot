set title "Prioritized items over time for each algorithm for different grid sizes"
set xlabel "Size ($S$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "gold_sizes.eps"
plot   "gold_size.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_size.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_size.dat" using 1:3 title 'Honey Bee' with lines

	
reset

set title "Prioritized items over time for each algorithm over object percentages"
set xlabel "Amount of Objects ($p$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "gold_objects.eps"
plot   "gold_objects.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_objects.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_objects.dat" using 1:3 title 'Honey Bee' with lines
	
reset

set title "Prioritized items over time for each algorithm over robot percentages"
set xlabel "Quantity of Robots ($c$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "gold_robots.eps"
plot   "gold_robots.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_robots.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_robots.dat" using 1:3 title 'Honey Bee' with lines, \
	0.1747*log(x) + 0.3709 title 'Log. (Nai\"ive)' with lines, \
	0.1413*log(x) + 0.359 title 'Log. (Deset Ant)' with lines, \
	0.1332*log(x) + 0.2696 title 'Log. (Honey Bee)' with lines
	
reset

set title "Prioritized items over time for each algorithm for robot type ratios"
set xlabel "Robot Type Ratio ($r$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "gold_division.eps"
plot   "gold_division.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_division.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_division.dat" using 1:3 title 'Honey Bee' with lines
	 
reset

set title "Prioritized items over time for each algorithm for item type ratios"
set xlabel "Item Type Ratio ($r$)"
set ylabel "Prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "gold_ratio.eps"
plot   "gold_ratio.dat" using 1:4 title 'Na\"ive' with lines, \
	"gold_ratio.dat" using 1:2 title 'Desert Ant' with lines, \
	"gold_ratio.dat" using 1:3 title 'Honey Bee' with lines
	 
reset
set title "Non-prioritized items over time for each algorithm for different grid sizes"
set xlabel "Size ($S$)"
set ylabel "Non-prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "waste_sizes.eps"
plot   "waste_size.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_size.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_size.dat" using 1:3 title 'Honey Bee' with lines
	
reset

set title "Non-prioritized items over time for each algorithm over object percentages"
set xlabel "Amount of Objects ($p$)"
set ylabel "Non-prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "waste_objects.eps"
plot   "waste_objects.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_objects.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_objects.dat" using 1:3 title 'Honey Bee' with lines
	
reset

set title "Non-prioritized items over time for each algorithm over robot percentages"
set xlabel "Quantity of Robots ($c$)"
set ylabel "Non-prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "waste_robots.eps"
plot   "waste_robots.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_robots.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_robots.dat" using 1:3 title 'Honey Bee' with lines
	
reset

set title "Non-prioritized items over time for each algorithm for item type ratios"
set xlabel "Item Type Ratio ($r$)"
set ylabel "Non-prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "waste_ratio.eps"
plot   "waste_ratio.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_ratio.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_ratio.dat" using 1:3 title 'Honey Bee' with lines
		
reset

set title "Non-prioritized items over time for each algorithm for robot type ratios"
set xlabel "Robot Type Ratio ($r$)"
set ylabel "Non-prioritized items over time ($\\sigma$)"
set autoscale
set xtic auto
set ytic auto

set term epslatex
set output "waste_division.eps"
plot   "waste_division.dat" using 1:4 title 'Na\"ive' with lines, \
	"waste_division.dat" using 1:2 title 'Desert Ant' with lines, \
	"waste_division.dat" using 1:3 title 'Honey Bee' with lines
	 
reset