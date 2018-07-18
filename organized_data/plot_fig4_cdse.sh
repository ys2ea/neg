set terminal postscript eps color enhanced size 3,2
set key font ',15'
set key at 1.9,-21285
set xlabel 'Radial cut off' font ',14'
set ylabel 'Energy' font ',14'
set yrange [-21340:-21270]
set ytics -21340,10,-21270
set tics font ',14'
set output 'CdSe.eps'

p 'fig4_CdSe_rcut.dat' w lp lw 4 pt 5 ps 2 lc rgb 'black' title 'Neglect method', \
 -21328.7719724325 w l dt (4,2) lw 4 lc rgb 'black' title 'Exact energy', -21279.3665056791 w l dt (1,4) lw 4 lc rgb 'black' title 'Block diagonal energy'

