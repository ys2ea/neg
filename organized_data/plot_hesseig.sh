set key font ',22'
#set format y "10^{%L}"
set terminal postscript eps color enhanced size 5,4
set output 'Hesseig.eps'
set xrange [0:70]
#set logscale y
set yrange [-1:30]
set xlabel 'Eigen states' font ',22'
set ylabel 'Hessian eigen values' font ',22'
set xtics font ',22'
set ytics font ',22'

p 'Hess_eig_neg_cdse.dat'  w lp lw 3 pt 2 ps 2 lc rgb 'black' title 'Low-curvature-projector', \
  'Hess_eig_naive_cdse.dat'  w lp lw 3 pt 3 ps 2 lc rgb 'red' title 'CLMO No-Low-curvature-projector',\
  'Hess_eig_all_cdse.dat' w lp lw 3 pt 1 ps 2 lc rgb 'blue' title 'Delocalized DFT'


