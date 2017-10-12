set xlabel "timesteps ($t$)"
set ylabel "\\tau(t)$"
set autoscale
set xtic auto
set ytic auto

set term epslatex monochrome 
set output "specializationratioovertime.tex"
plot   "specializationratioovertime.dat" using 1:2 title "$\\tau(t)$" with lines, \

reset

set xlabel "timesteps ($t$)"
set ylabel "$\\tau(t)$"
set autoscale
set xtic auto
set ytic auto
set term epslatex "" 10
set output "specializationratioovertime.eps"
plot   "specializationratioovertime.dat" using 1:2 title "$\\tau(t)$" with lines, \

reset