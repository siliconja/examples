
iptables -I PREROUTING -t nat -i eth0 -p tcp --dport 8096 -j DNAT --to 192.168.55.2:8096
iptables -I PREROUTING -t nat -i eth0 -p tcp --dport 7100 -j DNAT --to 192.168.55.2:80
iptables -I PREROUTING -t nat -i eth0 -p tcp --dport 443 -j DNAT --to 192.168.55.2:443
iptables -I FORWARD -p tcp -d 192.168.55.2 -m tcp --dport 8096 -j ACCEPT
iptables -I FORWARD -p tcp -d 192.168.55.2 --dport 80 -j ACCEPT 
iptables -I FORWARD -p tcp -d 192.168.55.2 --dport 443 -j ACCEPT

