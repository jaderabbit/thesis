set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set auto x
set yrange [0:0.7]
set term epslatex 
set output "waste_environment_types.tex"
plot 'waste_environment_types.dat' using 2:xtic(1) title col, \
        '' using 3:xtic(1) title col, \
        '' using 4:xtic(1) title col, \
        '' using 5:xtic(1) title col, 