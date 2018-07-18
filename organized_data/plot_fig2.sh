set key font ',12'
set logscale y
set format y "10^{%L}"
set terminal postscript eps color enhanced size 3,2
set output 'residue.eps'

set logscale y
set ylabel 'residue'

p 'fig2_tio2.dat' w lp title 'TiO2', 'fig2_cdse.dat' w lp title 'CdSe', 'fig2_si.dat' w lp title 'silicon', 'fig2_water.dat' w lp title 'water', 'fig2_hf.dat' w lp title 'HF'
