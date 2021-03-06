#!/bin/sh
CONF=/etc/config/qpkg.conf
QPKG_NAME="iobroker"
QPKG_DIR=$(/sbin/getcfg $QPKG_NAME Install_Path -d "" -f $CONF)

case "$1" in
  start)
    ENABLED=$(/sbin/getcfg $QPKG_NAME Enable -u -d FALSE -f $CONF)
    if [ "$ENABLED" != "TRUE" ]; then
        echo "$QPKG_NAME is disabled."
        exit 1
    fi
    cd $QPKG_DIR
    ./iobroker start
    : ADD START ACTIONS HERE
    ;;

  stop)
    cd $QPKG_DIR
    ./iobroker stop
    : ADD STOP ACTIONS HERE
    ;;

  restart)
    $0 stop
    $0 start
    ;;

  *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
esac

exit 0
