#!/bin/sh

tail -vn 0 -F /var/log/squid/access.log /var/log/squid/cache.log &
squid -f /squid.conf -N
