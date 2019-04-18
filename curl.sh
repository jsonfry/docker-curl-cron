#!/bin/sh

echo "$(date) - Start"

timeout -t ${TIMEOUT:-110} curl $OPTIONS > /dev/null

echo "$(date) End"
