set key font ',12'
set logscale y
set format y "10^{%L}"
set terminal postscript eps color enhanced size 3,2
set output 'residue.eps'

set logscale y
set xrange [1:16]
set ylabel '{/Symbol D}'
set xlabel 'Eigenvector No.'

p 'fig2_tio2.dat' u ($0+1):1 w lp lw 3 title 'TiO2', 'fig2_cdse.dat' u ($0+1):1 w lp lw 3title 'CdSe',\
'fig2_si.dat' u ($0+1):1 w lp lw 3 title 'silicon', 'fig2_water.dat' u ($0+1):1 w lp lw 3 title 'water', 'fig2_hf.dat' u ($0+1):1 w lp lw 3 title 'HF'
