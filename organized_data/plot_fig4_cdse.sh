c=2625.5
n=384

set terminal postscript eps color enhanced size 3,2
set key font ',15'
set key at 2,-20
set xlabel 'Radial cut off' font ',14'
set ylabel 'Energy (kJ/mol per Cd atom)' font ',14'
#set yrange [-21340*c/n:-21270*c/n]
#set ytics -21340*c/n,1,-21270*c/n
set tics font ',14'
set output 'CdSe.eps'

p 'fig4_CdSe_rcut.dat' u 1:(($2+21279.3665056791)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title 'Low-curvature-projector', \
 (-21328.7719724325+21279.3665056791)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''
#, -21279.3665056791*c/n w l dt (1,4) lw 4 lc rgb 'black' title ''

