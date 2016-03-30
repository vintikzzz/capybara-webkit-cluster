#!/bin/bash
PIDFILE=$CONSUL_TEMPLATE_PIDFILE
LOGFILE=$CONSUL_TEMPLATE_LOGFILE

case $1 in
  start)
    /opt/consul-template/consul-template -consul=$CONSUL_URL -template="/tmp/nginx.ctmpl:/opt/nginx/conf/nginx.conf" -pid-file=$PIDFILE >> $LOGFILE 2>&1 &
  ;;
  stop)
    kill `cat $PIDFILE`
  ;;
  *)
    echo "usage: consul-template.sh {start|stop}" ;;
esac
exit 0
