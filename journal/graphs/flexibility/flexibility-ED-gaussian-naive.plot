set xlabel "time steps"
set ylabel "Efficiency" tc lt 1
set y2label "Specialiation ratio, $\\tau$" tc lt 2
set autoscale
set xtic auto 
set yrange [0:100]
set y2range [0:1]
set ytic 10 nomirror tc lt 1
set y2tic 0.1 nomirror tc lt 2

set term epslatex monochrome 
set output "flexibility-ED-gaussian-naive.tex"
plot  "flexibility-ED-gaussian-naive.dat" using 1:2 title '$E_P$' with lines, \
      "flexibility-ED-gaussian-naive.dat" using 1:3 title '$E_{NP}$' with lines, \
      "flexibility-ED-gaussian-naive.dat" using 1:4 title '$\tau$' with lines axes x1y2

reset

set xlabel "time steps"
set ylabel "Efficiency" tc lt 1
set y2label "Specialiation ratio, $\\tau$" tc lt 2
set autoscale
set xtic auto 
set yrange [0:100]
set y2range [0:1]
set ytic 10 nomirror tc lt 1
set y2tic 0.1 nomirror tc lt 2

set term epslatex "" 10
set output "flexibility-ED-gaussian-naive.eps"
plot  "flexibility-ED-gaussian-naive.dat" using 1:2 title '$E_P$' with lines, \
      "flexibility-ED-gaussian-naive.dat" using 1:3 title '$E_{NP}$' with lines, \
      "flexibility-ED-gaussian-naive.dat" using 1:4 title '$\tau$' with lines axes x1y2

reset
