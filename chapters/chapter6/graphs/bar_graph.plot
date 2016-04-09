set terminal epslatex 
set style fill solid border rgb "black"
set auto x
set yrange [0:*]
set output "environment_types.tex"
plot 'environment_types.dat' using 2:xtic(1) title col, \
        '' using 3:xtic(1) title col, \
        '' using 4:xtic(1) title col, \
        '' using 5:xtic(1) title col, 