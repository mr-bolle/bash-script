#!/bin/bash

if [ ! -f /var/run/reboot-required ]; then
        # no reboot required (0=OK)
        echo "OK: no reboot required"
        exit 0
else
        # reboot required (1=WARN)
        echo "WARNING: `cat /var/run/reboot-required`"
        exit 1
fi
