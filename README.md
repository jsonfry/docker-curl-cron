

# keydonix/curl-cron

Forked from: [jsonfry/curl-cron](https://github.com/jsonfry/docker-curl-cron)

Docker image that runs periodically runs a curl command

## Usage

    docker run -d [OPTIONS] keydonix/curl-cron


### Required Parameters:

* `-e OPTIONS=<OPTIONS>`: curl command options
* `-e CRON_SCHEDULE="0 1 * * *"`: specifies when cron job starts ([details](http://en.wikipedia.org/wiki/Cron)), e.g. `0 1 * * *` (runs every night at 1:00).
* `-e TIMEOUT=<NUMBER>`: Timeout in seconds for curl command (default 110)

### Optional parameters:

* `now`: run container once and exit (no cron scheduling).

## Examples:

Run every hour with cron schedule (container keeps running):

    docker run -d \
        -e OPTIONS=example.com \
        -e CRON_SCHEDULE="0 1 * * *" \
        -e TIMEOUT=9 \
        keydonix/curl-cron

Run just once (container is deleted afterwards):

    docker run --rm \
        -e OPTIONS=example.com \
        keydonix/curl-cron now

