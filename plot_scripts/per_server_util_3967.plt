set terminal pdfcairo enhanced color font "Helvetica,9" linewidth 4 rounded fontscale 1.0
set style data histogram
set style histogram errorbar gap 1 lw 1

set style line 80 lt rgb "#808080"
set style line 81 lt 0
set style line 81 lt rgb "#808080"

set grid back linestyle 81
set border 3 back linestyle 80

set xtics rotate by 45 right 
set ytics nomirror

set style line 1 lt rgb "#A00000" lw 1 pt 1
set style line 2 lt rgb "#00A000" lw 1 pt 6 
 
set output "per_server_util_3967.pdf"
set xlabel "Server ID"
set ylabel "Mean Utilization"
set key outside horizontal

set yr[0:1.05]

plot 'log.viterbi.3967.per_server_util' using 2:3:4:xtic(1) title "Heuristic Solution"  fs pattern 7 ls 1
