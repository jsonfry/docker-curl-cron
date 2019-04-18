#!/bin/sh

set -e

if [[ "$1" == 'now' ]]; then
    exec /curl.sh
else
	echo "$CRON_SCHEDULE /curl.sh" >> /var/spool/cron/crontabs/root
    exec crond -l 2 -f
fi
