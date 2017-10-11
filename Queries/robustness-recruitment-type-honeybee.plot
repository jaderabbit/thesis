set title "Average timesteps spent performing recruitment activities by robots of the swarm for each item foraged, $t_{recruitment}$, for the honey bee algorithm, per item distribution, for each environment item type ratio, $r$."
set xlabel "Environment item type ratio ($r$)"
set ylabel "$t_{recruitment}$"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome 
set output "robustness-recruitment-type-honeybee.tex"
plot "robustness-recruitment-type-honeybee.dat" using 1:2 title 'clustered' with lines, \
	"robustness-recruitment-type-honeybee.dat" using 1:3 title 'gaussian' with lines, \
	"robustness-recruitment-type-honeybee.dat" using 1:4 title 'uniform' with lines, \
    "robustness-recruitment-type-honeybee.dat" using 1:5 title 'vein' with lines

reset

set title "Average timesteps spent performing recruitment activities by robots of the swarm for each item foraged, $t_{recruitment}$, for the honey bee algorithm, per item distribution, for each environment item type ratio, $r$."
set xlabel "Environment item type ratio ($r$)"
set ylabel "$t_{recruitment}$"
set autoscale
set xtic auto
set ytic auto


set term epslatex
set output "robustness-recruitment-type-honeybee.eps"
plot "robustness-recruitment-type-honeybee.dat" using 1:2 title 'clustered' with lines, \
	"robustness-recruitment-type-honeybee.dat" using 1:3 title 'gaussian' with lines, \
	"robustness-recruitment-type-honeybee.dat" using 1:4 title 'uniform' with lines, \
    "robustness-recruitment-type-honeybee.dat" using 1:5 title 'vein' with lines

reset