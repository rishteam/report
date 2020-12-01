reset
set title "Batch Rendering (Debug Mode)"
set xlabel "Number of Sprites"
set ylabel "FPS"
#
set terminal png font " Times_New_Roman,12 "
set output "output/debug_fps_compare.png"
#
set logscale x;
set xtics 100,10
#
set ytics 0, 500
#
set key right top
# set key at graph 0.25, 0.95
set grid

plot \
"data/debug_fps_compare.txt" using 1:2 with linespoints linewidth 2 title "Non-Batch", \
"data/debug_fps_compare.txt" using 1:3 with linespoints linewidth 2 title "Batch"