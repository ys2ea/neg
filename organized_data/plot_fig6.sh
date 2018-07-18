set encoding iso_8859_1 
set key font ',12'
set terminal postscript eps color enhanced size 3,2
#set term pdf
set ylabel 'g_{Si\_Si}(r)' font ',16'
set xlabel 'r_{Si\_Si}(\305)' font ',16'
set xtics font ',16'
set ytics font ',16'
set output 'rdf_si.eps'
set xrange [3:5]


p 'fig6_neg_t02_rdf.dat' w l lw 4 lc rgb 'black' title 'New method(MC)', 'fig6_ot_rdf.dat' w l lw 4 lc rgb 'red' title 'OT(MD)'
