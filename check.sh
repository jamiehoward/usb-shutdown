#!/bin/bash

if [ ! -d "$1" ]
then
	echo "Please specify a drive to monitor."
	exit 0
fi

while [ -d "$1" ]; do
	# Don't do anything
	sleep 4
done

echo "Drive removed. Shutting down.";

shutdown -r now

exit 0
