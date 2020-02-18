#!/bin/sh

set -e

export OPTIONS=$OPTIONS

if [[ "$1" == 'now' ]]; then
  exec /curl.sh
else
  echo "$CRON_SCHEDULE /curl.sh" | crontab -u root -
  
  crond -l 2 -f
fi
