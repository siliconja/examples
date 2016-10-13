ip rule add prio 100 fwmark 100 table 40
iptables -t mangle -A FWMARK_BY_DSCP -m dscp --dscp 0x20 -j MARK --set-mark 100

ip rule add prio 100 fwmark 100 table 40
iptables -t mangle -A PREROUTING -m dscp --dscp 0x20 -j MARK --set-mark 100

