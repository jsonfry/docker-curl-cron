#!/bin/sh

echo "$(date) - Start"

for IPFS_HASH in $IPFS_HASHES; do
	(
		CACHE_INFO=$(timeout -t ${TIMEOUT:-110} curl -v https://cloudflare-ipfs.com/ipfs/$IPFS_HASH -o /dev/null 2>&1 | grep Cache-Status)
		echo $IPFS_HASH : $CACHE_INFO
	) &
done

wait

echo "$(date) End"
