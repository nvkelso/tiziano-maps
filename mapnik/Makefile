#MAP_TYPE = style.xml
#MAP_TYPE = style-solid-colors.xml
#MAP_TYPE = style-ocean.xml
#MAP_TYPE = style-land.xml
MAP_TYPE = style-labels.xml

SFO_LATLON = 37.764740 -122.419523
SFO_LATLON2 = 37.764740 -122.419523 #37.6141 -122.3961
OAK_LATLON = 37.807613 -122.279891
NYC_LATLON = 40.75912 -74.00092 #40.756749 -73.998284
DC_LATLON = 38.90254 -77.03944 #38.8469 -77.041
LON_LATLON = 51.507553 -0.008271
MOS_LATLON = 55.882322 37.724175
TOKYO_LATLON = 35.6595 139.7004

all: index.html

index.html: \
	renders/low-zoom-world-1.png renders/low-zoom-world-2.png \
	renders/low-zoom-world-usa-3.png renders/low-zoom-world-berlin-3.png \
	renders/low-zoom-world-tokyo-3.png renders/low-zoom-world-usa-4.png \
	renders/low-zoom-world-berlin-4.png renders/low-zoom-world-tokyo-4.png \
	renders/low-zoom-world-dc-5.png renders/low-zoom-world-berlin-5.png \
	renders/low-zoom-world-tokyo-5.png renders/low-zoom-world-sanfrancisco-5.png \
	renders/low-zoom-world-dc-6.png renders/low-zoom-world-berlin-6.png \
	renders/low-zoom-world-tokyo-6.png renders/low-zoom-world-sanfrancisco-6.png \
	renders/low-zoom-world-newyork-7.png \
	renders/low-zoom-world-dc-7.png renders/low-zoom-world-berlin-7.png \
	renders/low-zoom-world-tokyo-7.png renders/low-zoom-world-sanfrancisco-7.png \
	renders/low-zoom-world-newyork-8.png \
	renders/low-zoom-world-dc-8.png renders/low-zoom-world-berlin-8.png \
	renders/low-zoom-world-tokyo-8.png renders/low-zoom-world-sanfrancisco-8.png \
	renders/low-zoom-world-newyork-9.png \
	renders/low-zoom-world-dc-9.png renders/low-zoom-world-berlin-9.png \
	renders/low-zoom-world-tokyo-9.png renders/low-zoom-world-sanfrancisco-9.png

low-zoom-world-1.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 0 0 -z 1 -d 1024 600 -o low-zoom-world-1.png

renders/low-zoom-world-1.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 0 0 -z 1 -d 1024 600 -o $@

renders/low-zoom-world-2.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 0 0 -z 2 -d 1024 600 -o $@

renders/low-zoom-world-usa-3.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38 -90 -z 3 -d 1024 600 -o $@

renders/low-zoom-world-usa-4.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38 -90 -z 4 -d 1024 600 -o $@


renders/low-zoom-world-dc-5.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38.8893 -77.0502 -z 5 -d 1024 600 -o $@

renders/low-zoom-world-dc-6.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38.8893 -77.0502 -z 6 -d 1024 600 -o $@


renders/low-zoom-world-newyork-7.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(NYC_LATLON) -z 7 -d 1024 600 -o $@

renders/low-zoom-world-newyork-8.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(NYC_LATLON) -z 8 -d 1024 600 -o $@

renders/low-zoom-world-newyork-9.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(NYC_LATLON) -z 9 -d 1024 600 -o $@


renders/low-zoom-world-dc-7.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38.8893 -77.0502 -z 7 -d 1024 600 -o $@

renders/low-zoom-world-dc-8.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38.8893 -77.0502 -z 8 -d 1024 600 -o $@

renders/low-zoom-world-dc-9.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 38.8893 -77.0502 -z 9 -d 1024 600 -o $@


renders/low-zoom-world-berlin-3.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 3 -d 1024 600 -o $@

renders/low-zoom-world-berlin-4.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 4 -d 1024 600 -o $@

renders/low-zoom-world-berlin-5.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 5 -d 1024 600 -o $@

renders/low-zoom-world-berlin-6.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 6 -d 1024 600 -o $@

renders/low-zoom-world-berlin-7.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 7 -d 1024 600 -o $@

renders/low-zoom-world-berlin-8.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 8 -d 1024 600 -o $@

renders/low-zoom-world-berlin-9.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 52.5096 13.3765 -z 9 -d 1024 600 -o $@


renders/low-zoom-world-tokyo-3.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 90 -z 3 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-4.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 135 -z 4 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-5.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 139.7004 -z 5 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-6.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 139.7004 -z 6 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-7.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 139.7004 -z 7 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-8.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 139.7004 -z 8 -d 1024 600 -o $@

renders/low-zoom-world-tokyo-9.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l 35.6595 139.7004 -z 9 -d 1024 600 -o $@


renders/low-zoom-world-sanfrancisco-5.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(SFO_LATLON) -z 5 -d 1024 600 -o $@

renders/low-zoom-world-sanfrancisco-6.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(SFO_LATLON) -z 6 -d 1024 600 -o $@

renders/low-zoom-world-sanfrancisco-7.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(SFO_LATLON) -z 7 -d 1024 600 -o $@

renders/low-zoom-world-sanfrancisco-8.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(SFO_LATLON) -z 8 -d 1024 600 -o $@

renders/low-zoom-world-sanfrancisco-9.png: $(MAP_TYPE)
	python mapnik-render.py -f fonts -s $(MAP_TYPE) -l $(SFO_LATLON) -z 9 -d 1024 600 -o $@


style.xml: style.mml stylesheet.mss labels.mss
	cascadenik-compile.py style.mml $@
	chmod a+r $@

style-solid-colors.xml: style-solid-colors.mml stylesheet-solid-colors.mss labels.mss
	cascadenik-compile.py style-solid-colors.mml $@
	chmod a+r $@

style-ocean.xml: style-ocean.mml stylesheet-ocean.mss
	cascadenik-compile.py style-ocean.mml $@
	chmod a+r $@

style-land.xml: style-land.mml stylesheet-land.mss
	cascadenik-compile.py style-land.mml $@
	chmod a+r $@

style-labels.xml: style-labels.mml stylesheet-labels.mss naturalearth-lowzooms.mss
	cascadenik-compile.py style-labels.mml $@
	chmod a+r $@

all-styles: \
    style-ocean.xml \
    style-land.xml \
    style-solid-colors.xml \
    style-labels.xml \
    style.xml
    

clean:
	rm -f style.xml
	rm -f style-solid-colors.xml
	rm -f style-ocean.xml
	rm -f style-land.xml
	rm -f style-labels.xml
	rm -f renders/low-zoom-world-*.png
	rm -f renders/sanfrancisco-*.png
	rm -f renders/oakland-*.png
	rm -f renders/newyork-*.png
	rm -f renders/london-*.png
	rm -f renders/moscow-*.png
	rm -f renders/dc-*.png
	rm -f renders/tokyo-*.png