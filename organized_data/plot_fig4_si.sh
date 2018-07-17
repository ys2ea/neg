set terminal postscript eps color enhanced size 3,2
set key font ',15'
set key at 2.1,-29.6
set xlabel 'Radial cut off' font ',14'
set ylabel 'Energy' font ',14'
set yrange [-31.2:-29.4]
set ytics -31.2,0.2,-29.4
set tics font ',14'
set output 'Si.eps'

p 'fig4_Si_rcut.dat' w lp lw 4 pt 5 ps 2 lc rgb 'black' title 'Neglect method', \
 -31.0670372335 w l dt (4,2) lw 4 lc rgb 'black' title 'Exact energy', -29.4695103650 w l dt (1,4) lw 4 lc rgb 'black' title 'Block diagonal energy'

