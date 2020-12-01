reset
set title "Batch Rendering (Debug Mode)"
set xlabel "Number of Sprites"
set ylabel "Frame Time"
#
set terminal png font " Times_New_Roman,12 "
set output "output/debug_frameTime_compare.png"
#
set logscale x;
set xtics 100,10
#
set yrange [0:0.16]
# set ytics 0, 0.01
#
set key right top
# set key at graph 0.25, 0.95
# set grid

plot \
"data/frame.txt" using 1:2 with linespoints linewidth 2 title "DebugMode Batch"