#!/bin/sh

# USAGE:
# sudo ./tilestache-gunicorn.sh stop && sleep 2 && ./tilestache-gunicorn.sh clean && sleep 2 && sudo ./tilestache-gunicorn.sh start && tail -f -n 0 /var/log/zillow-gunicorn.log 

# SEE ALSO: http://gunicorn.org/

# To make sure this runs at startup, do:
# update-rc.d tilestache-gunicorn.sh defaults

ADDRESS=0.0.0.0:4131
GUNICORN=/usr/local/bin/gunicorn
DIRNAME=~/git-repos/tiziano-maps/tilestache
TILEDIRNAME=~/git-repos/tiziano-maps/tilestache/tiles/*
CONFIG=tilestache.cfg

PIDFILE="/var/run/tiziano-gunicorn.pid"
LOGFILE="~/git-repos/tiziano-maps/tilestache/tiziano-gunicorn.log"
COMMAND="$GUNICORN --daemon --workers 4 --worker-class egg:gunicorn#gevent_wsgi --bind $ADDRESS --log-file $LOGFILE"
#COMMAND="$GUNICORN --daemon --user www-data --workers 4 --worker-class egg:gunicorn#gevent_wsgi --bind $ADDRESS --log-file $LOGFILE"

start_server () {
  if [ -f $PIDFILE ]; then
    #pid exists, check if running
    if [ "$(ps -p `cat $PIDFILE` | wc -l)" -gt 1 ]; then
       echo "Server already running on ${ADDRESS}"
       return
    fi
  fi
  echo "starting ${ADDRESS}"
  cd $DIRNAME && $COMMAND --pid $PIDFILE "TileStache:WSGITileServer('tilestache.cfg')"
}

stop_server () {
  if [ -f $PIDFILE ] && [ "$(ps -p `cat $PIDFILE` | wc -l)" -gt 1 ]; then
    echo "stopping server ${ADDRESS}"
    kill -9 `cat $PIDFILE`
    rm $PIDFILE
  else
    if [ -f $PIDFILE ]; then
      echo "server ${ADDRESS} not running"
    else
      echo "No pid file found for server ${ADDRESS}"
    fi
  fi
}

restart_server () {
  if [ -f $PIDFILE ] && [ "$(ps -p `cat $PIDFILE` | wc -l)" -gt 1 ]; then
    echo "gracefully restarting server ${ADDRESS}"
    kill -HUP `cat $PIDFILE`
  else
    if [ -f $PIDFILE ]; then
      echo "server ${ADDRESS} not running"
    else
      echo "No pid file found for server ${ADDRESS}"
    fi
  fi
}

clean_tiles () {
	sudo rm -r $TILEDIRNAME
}


case "$1" in
'start')
  start_server
  ;;
'stop')
  stop_server
  ;;
'restart')
  restart_server
  ;;
'clean')
  clean_tiles
  ;;
*)
  echo "Usage: $0 { start | stop | restart | clean }"
  ;;
esac

exit 0
