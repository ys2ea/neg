set logscale y
set format y "10^{%L}"
set key font ',15'
set xlabel 'iterations' font ',14'
set ylabel 'Gradient Norm' font ',14'
set tics font ',14'
set style line 1 lc rgb 'green' lt 2 lw 2 pt 7 ps 0.5
set style line 2 lc rgb 'red' lt 2 lw 2 pt 2 ps 0.5
set term eps
set output 'grad.eps'
p 'fig3_grad_X.dat' u 4 w lp ls 1 title '2-step procedure', 'fig3_grad_neg.dat' u 7 w lp ls 2 title 'new method'


