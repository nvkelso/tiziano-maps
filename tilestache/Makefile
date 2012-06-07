# NOTE: to run tilestache headless on the server while you're not ssh'd in live, use SCREEN unix magic

# Tip: Note the escaped $$2 (the first $ escapes the $2)
# Looks for the processes (ps) that use port number 4110, removes the process that
# is doing that looking, and pipes matching process numbers to make the kill.
stop:
	kill -9 `ps -aef | grep ':4110' | grep -v grep | awk '{print $$2}'`

start: 
	gunicorn -b 192.168.1.5:4110 --workers 1 "TileStache:WSGITileServer('../tilestache/tilestache.cfg')"

clean:
	rm -r tiles/*
	
../mapnik/style-toner-standard.xml:
	cascadenik-compile.py ../mapnik/style.mml $@
	chmod a+r $@

update: ../mapnik/style.xml
	cp ../mapnik/style.xml ../tilestache/style.xml