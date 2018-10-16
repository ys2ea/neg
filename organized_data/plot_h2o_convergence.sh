c=2625.5
#H2O
n=128

set encoding iso_8859_1 
set terminal postscript eps color enhanced size 3,2
set output 'H2O_conv.eps'

set key font ',15'
set xlabel 'Radial cut off(\305)' font ',14'
set ylabel 'Energy (kJ/mol per water molecule)' font ',14'
set tics font ',14'
set multiplot


p 'fig4_H2O_atomic_frag_rcut.dat' u ($1*2.72):(($2+2200.9325498932)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title '',\
  (-2201.5987544894+2200.9325498932)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''  


set key font ',8'
set tics font ',8'
set origin 0.4,0.4
set size 0.5,0.5
set xlabel 'Threshold(a.u.) (R_{C}=5.5\305)' font ',9'
set ylabel 'E_{LCP}-E_{DFT} (kj/mol)' font ',9' offset 4,0,0
set xrange [0.1:0]

set ytics 0.005
p 'threshold_h2o.dat' u 1:(($2+2201.9925885793)*c/n) w lp lw 2 pt 5 ps 1 lc rgb 'black' title ''


