set key font ',24'
#set format y "10^{%L}"
set terminal postscript eps color enhanced size 5,3
set xlabel 'Step'
set ylabel 'Determinant' font ',24' 
set y2label 'Max. gradient norm' font ',24'
set style line 1 lc rgb 'black' lt 2 lw 2 pt 7 ps 1
set style line 2 lc rgb 'red' lt 2 lw 3 pt 2 ps 1
set xrange [0:50]
set yrange [0.0001:1]
set y2range [0.:0.1]
set ytics nomirror
set logscale y
set y2tics 0,0.02,0.1
set output 'det_grad.eps'

p 'fig1_det.dat' w lp ls 1 title 'Determinant' axes x1y1, 'fig1_grad.dat' w lp ls 2 title 'Max. gradient norm' axes x1y2


