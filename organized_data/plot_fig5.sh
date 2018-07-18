set key font ',22'
set terminal postscript eps color enhanced size 6,4
set output 'timing.eps'
#set xrange [0:200]
set yrange [0:12000]
set xlabel 'Atoms' font ',22'
set ylabel 'Wall-clock time (second)' font ',22'
set xtics font ',22'
set ytics font ',22'

p 'fig5_timing_cdse.dat' u ($1<10000? $1:1/0):2 w lp lw 3 pt 6 ps 3 dt '-' lc rgb 'black' title 'OT', 'fig5_timing_cdse.dat' u 1:3 w lp lw 3 pt 3 ps 3 lc rgb 'black' title 'Hessian filter'
