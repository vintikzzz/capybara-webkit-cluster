touch $CONSUL_TEMPLATE_LOGFILE
tail -f $CONSUL_TEMPLATE_LOGFILE &
envsubst < /tmp/monitrc.template > /etc/monit/monitrc
monit -I
