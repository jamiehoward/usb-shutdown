#!/bin/bash

if [ ! -d "$1" ]
then
	echo "Please specify a drive to monitor."
	exit 0
fi

while [ -d "$1" ]; do
	# Don't do anything
	sleep 2
done

echo "Drive removed. Shutting down.";

if [ $2 = "-l" ]
then
	/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
	exit 0

fi

shutdown -r now

exit 0
