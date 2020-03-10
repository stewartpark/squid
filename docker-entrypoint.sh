#!/bin/sh

mkdir -p /var/cache/squid
tail -vn 0 -F /var/log/squid/access.log /var/log/squid/cache.log /var/log/squid/store.log &
squid -z -f /squid.conf -N || true
squid -f /squid.conf -N
