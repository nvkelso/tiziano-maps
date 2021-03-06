# NOTE: to run tilestache headless on the server while you're not ssh'd in live, use SCREEN unix magic

# Tip: Note the escaped $$2 (the first $ escapes the $2)
# Looks for the processes (ps) that use port number 4110, removes the process that
# is doing that looking, and pipes matching process numbers to make the kill.
stop:
	kill -9 `ps -aef | grep ':4110' | grep -v grep | awk '{print $$2}'`

start: 
	gunicorn -b 192.168.1.5:4110 --workers 1 "TileStache:WSGITileServer('../tilestache/tilestache.cfg')"

usa:
	tilestache-seed.py -b 22.2 -126.9 40.0 -67.2 -c tilestache.cfg -l map 0 1 2 3 4 5 6

world:
	tilestache-seed.py -b -89.9 -179.9 89.9 179.9 -c tilestache.cfg -l map 0 1 2 3 4 5 6

zip:
	zip -r tiles.zip tiles/map-bright/

clean:
	mkdir -p tiles
	rm -r tiles/*
	rm tiles.zip
	
../mapnik/style.xml:
	cascadenik-compile.py ../mapnik/style.mml $@
	chmod a+r $@

../mapnik/style-solid-colors.xml:
	cascadenik-compile.py ../mapnik/style-solid-colors.mml $@
	chmod a+r $@

../mapnik/style-ocean.xml:
	cascadenik-compile.py ../mapnik/style-ocean.mml $@
	chmod a+r $@

../mapnik/style-land.xml:
	cascadenik-compile.py ../mapnik/style-land.mml $@
	chmod a+r $@

../mapnik/style-labels.xml:
	cascadenik-compile.py ../mapnik/style-labels.mml $@
	chmod a+r $@

	
copy: ../mapnik/style.xml \
	../mapnik/style-solid-colors.xml \
	../mapnik/style-ocean.xml \
	../mapnik/style-land.xml \
	../mapnik/style-labels.xml
	cp ../mapnik/style.xml ../tilestache/style.xml
	cp ../mapnik/style-solid-colors.xml ../tilestache/style-solid-colors.xml
	cp ../mapnik/style-ocean.xml ../tilestache/style-ocean.xml
	cp ../mapnik/style-land.xml ../tilestache/style-land.xml
	cp ../mapnik/style-labels.xml ../tilestache/style-labels.xml	