
main: debug_fps_compare.png debug_index_compare.png frame.png

%.png: %.gp
	gnuplot $<

.PHONY: clean
clean:
	rm -f ./*.png