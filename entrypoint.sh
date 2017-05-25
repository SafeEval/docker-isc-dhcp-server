#!/bin/sh

# Initialize the lease file if it doesn't exist.
touch /data/dhcpd/dhcpd.leases

# Start devpi-server.
dhcpd -cf /data/dhcpd/dhcpd.conf -lf /data/dhcpd/dhcpd.leases --no-pid -4 -f
