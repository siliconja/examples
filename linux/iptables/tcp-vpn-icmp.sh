
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

# allow TCP packets from any source destined for 192.168.1.1
iptables -A INPUT -s 0/0 -i eth0 -d 192.168.1.1  -p TCP -j ACCEPT

# allow OpenVPN server traffic from eth0
iptables -A INPUT -p udp --dport 1194 -j ACCEPT
iptables -A INPUT -i eth0 -j DROP
iptables -A OUTPUT -p udp --sport 1194 -j ACCEPT
iptables -A OUTPUT -o eth0 -j DROP

# allow ICMP ping traffic
iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT
iptables -A INPUT  -p icmp --icmp-type echo-reply   -j ACCEPT


sudo iptables -A PREROUTING -t mangle -p tcp -s 10.121.32.0 --syn -j QUEUE
