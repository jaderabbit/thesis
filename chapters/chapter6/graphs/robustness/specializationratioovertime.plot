set title "Specialization ratio $\tau$ over time"
set xlabel "iteration"
set ylabel "Specialiation ratio, $\tau$"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome 
set output "specializationratioovertime.tex"
plot   "specializationratioovertime.dat" using 1:2 title 'Specialization Ratio $\tau$' with lines, \

reset

set title "Specialization ratio $\\tau$ over time"
set xlabel "iteration"
set ylabel "Specialiation ratio, $\\tau$"
set autoscale
set xtic auto
set ytic auto
set term epslatex "" 10
set output "specializationratioovertime.eps"
plot   "specializationratioovertime.dat" using 1:2 title 'Specialization Ratio $\tau$' with lines, \

reset