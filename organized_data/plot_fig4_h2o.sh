c=2625.5
n=128
set terminal postscript eps color enhanced size 3,2
set key font ',15'
#set key at 1.9,-2200.98
set xlabel 'Radial cut off' font ',14'
set ylabel 'Energy (kJ/mol)' font ',14'
#set yrange [-2201.8:-2200.8]
#set ytics -2201.8,0.2,-2200.8
set tics font ',14'
set output 'H2O.eps'

p 'fig4_H2O_atomic_frag_rcut.dat' u 1:(($2+2200.9325498932)*c/n) w lp lw 4 pt 5 ps 2 lc rgb 'black' title 'Low-curvature-projector', \
 (-2201.5987544894+2200.9325498932)*c/n w l dt (4,2) lw 4 lc rgb 'black' title ''
#,-2200.9325498932 w l dt (1,4) lw 4 lc rgb 'black' title 'Block diagonal energy'

