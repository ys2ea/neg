set logscale y
set format y "10^{%L}"
set key font ',15'
set xlabel 'Iteration' font ',14'
set ylabel 'Max. gradient norm' font ',14'
set tics font ',14'
set style line 1 lc rgb 'green' lt 2 lw 2 pt 7 ps 0.5
set style line 2 lc rgb 'red' lt 2 lw 3 pt 2 ps 0.5
set term eps
set output 'grad.eps'

p 'grad_almo_x.dat' u 1:2w lp ls 1 lc rgb 'black' title 'Block-diagonal projector', 'grad_neg.dat' u 1:2 w lp ls 2 lc rgb 'red' title 'Low-curvature projector'


