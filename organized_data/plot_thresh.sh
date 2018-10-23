c=2625.5
#cdse
#n=384
#water
n=128

set terminal postscript eps color enhanced size 3,2
set key font ',15'
set key at 2,-20
set xlabel 'Threshold' font ',14'
set ylabel 'E_{LCP}-E_{OT} (kJ/mol per Cd atom)' font ',14'
#set yrange [-21340*c/n:-21270*c/n]
set xrange [0.1:0]
#set ytics -21340*c/n,1,-21270*c/n
set tics font ',14'
set output 'Threshold_H2O.eps'

p 'threshold_.dat' u 1:(($2+21328.7677251633)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title 'Low-curvature-projector'
# (-21328.7719724325+21279.3665056791)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''

