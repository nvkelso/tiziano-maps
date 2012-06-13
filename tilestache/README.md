For testing / live connections, turn the Tilestache bits on:

    sudo ./tilestache-gunicorn.sh stop && sleep 2 && sudo ./tilestache-gunicorn.sh start && tail -f -n 0 ~/git-repos/tiziano-maps/tilestache/tiziano-gunicorn.log

You'll also want to run a simple HTTP server for serving up the test HTML maps experiments.

    sudo python -m SimpleHTTPServer 80

Maps are really just a big Mapnik file and there are a varierty of tools for
generating and serving map tiles available. We like to serve tiles using
TileStache (http://tilestache.org/).

For seeding tile staches:

    tilestache-seed.py -b 22.2 -126.9 40.0 -67.2 -c tilestache.cfg -l map 0 1 2 3 4 5 6
    tilestache-seed.py -b 22.2 -126.9 40.0 -67.2 -c tilestache.cfg -l image 0 1 2 3 4 5 6
    tilestache-seed.py -b 22.2 -126.9 40.0 -67.2 -c tilestache.cfg -l basemap 0 1 2 3 4 5 6
    tilestache-seed.py -b 22.2 -126.9 40.0 -67.2 -c tilestache.cfg -l map-bright 0 1 2 3 4 5 6
    
We want to seed tiles in the CONUS area of the US excluding Alaska and Hawaii since it's a nice bounding box. The layer we're drawing is "map" in that config file. The 4 stands for the zoom to seed at. We run this as sudo -u www-data so the tile images have the correct privileges. 


Further reading...

Here's an example of how to run a bare-bones TileStache server (on port 8080)
from the command-line:

	tilestache-server.py -c tilestache.cfg

Here's an example of how to run TileStache (on port 4131) under gunicorn. 

Note, this is helpful to debug as it runs in the foreground, not the background (as under the shell scripts above):

    gunicorn -b 0.0.0.0:4131 "TileStache:WSGITileServer('tilestache.cfg')"
    
Or more complicated:

	/usr/local/bin/gunicorn -n tilespotting -w 4 -u www-data -k egg:gunicorn#gevent_wsgi -b localhost:4131 -D "TileStache:WSGITileServer('tilestache.cfg')"

There's also an example init.d script in the gunicorn directory that will make
sure gunicorn + tilestache are started automatically when you (re)boot your
server. See above.

