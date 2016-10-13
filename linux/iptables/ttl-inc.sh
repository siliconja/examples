 iptables -t mangle -A PREROUTING -i eth0 -j TTL --ttl-inc 1

