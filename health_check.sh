#!/bin/bash
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ "$DISK_USAGE" -ge 80 ]; then
	echo "CRTICAL: Disk usage is at ${DISK_USAGE}%"
	exit 1
else
	echo "OK: Disk usage is at ${DISK_USAGE}%"
    exit 0
fi
# echo "checking system Health";
# df -h;
# free -m;

