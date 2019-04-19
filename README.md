

# keydonix/curl-cron

Forked from: [jsonfry/curl-cron](https://github.com/jsonfry/docker-curl-cron)

Docker image that runs periodically runs a curl command

## Usage

    docker run -d [OPTIONS] keydonix/curl-cron


### Required Parameters:

* `-e IPFS_HASHES="hash1 hash2"`: List of ipfs hashes
* `-e CRON_SCHEDULE="0 1 * * *"`: specifies when cron job starts ([details](http://en.wikipedia.org/wiki/Cron)), e.g. `0 1 * * *` (runs every night at 1:00).
* `-e TIMEOUT=<NUMBER>`: Timeout in seconds for curl command (default 110)

### Optional parameters:

* `now`: run container once and exit (no cron scheduling).

## Examples:

Run every hour with cron schedule (container keeps running):

    docker run -d \
        -e IPFS_HASHES="hash1 hash2" \
        -e CRON_SCHEDULE="0 1 * * *" \
        -e TIMEOUT=9 \
        keydonix/curl-cron

Run just once (container is deleted afterwards):

    docker run --rm \
        -e IPFS_HASHES="QmRAQB6YaCyidP37UdDnjFY5vQuiBrcqdyoW1CuDgwxkD4" \
        keydonix/curl-cron now

