c=2625.5
#CdSe
n=384

set encoding iso_8859_1 
set terminal postscript eps color enhanced size 3,2
set output 'CdSe_conv.eps'
#set output 'H2O_conv.eps'
#set output 'Si_conv.eps'

set key font ',15'
#set key at 2,-20
set xlabel 'Radial cut off(\305)' font ',14'
#set ylabel 'Energy (kJ/mol per water molecule)' font ',14'
set ylabel 'Energy (kJ/mol per Cd atom)' font ',14'
set tics font ',14'
set multiplot

#set yrange [-50:350]
p 'fig4_CdSe_rcut.dat' u ($1*3.48):(($2+21279.3665056791)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title '',\
  (-21328.7677251633+21279.3665056791)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''


set key font ',8'
set tics font ',8'
set origin 0.4,0.4
set size 0.5,0.5
set xlabel 'Threshold(a.u.) (R_{C}=7\305)' font ',9'
set ylabel 'E_{LCP}-E_{DFT} (kj/mol)' font ',9' offset 3,0,0
set xrange [0.1:0]

p 'threshold_cdse.dat' u 1:(($2+21328.7677251633)*c/n) w lp lw 2 pt 5 ps 1 lc rgb 'black' title ''


