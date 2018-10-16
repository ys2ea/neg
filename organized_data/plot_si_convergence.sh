c=2625.5
#Si
n=512

set encoding iso_8859_1 
set terminal postscript eps color enhanced size 3,2
set output 'Si_conv.eps'

set key font ',15'
#set key at 2,-20
set xlabel 'Radial cut off(\305)' font ',14'
set ylabel 'Energy (kJ/mol per atom)' font ',14'
set tics font ',14'
set multiplot

p 'fig4_Si_rcut.dat' u ($1*4.2):(($3+1898.9471214379)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title '', \
 (-2012.9910355847+1898.9471214379)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''

set key font ',8'
set tics font ',8'
set origin 0.4,0.4
set size 0.5,0.5
set xlabel 'Threshold (a.u.) (R_{C}=8\305)' font ',9'
set ylabel 'E_{LCP}-E_{DFT} (kj/mol)' font ',9' offset 3,0,0
set xrange [0.1:0]


p 'threshold_si.dat' u 1:(($2+2012.9910355847)*c/n) w lp lw 2 pt 5 ps 1 lc rgb 'black' title ''

