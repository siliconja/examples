# external IP is 192.168.7.3
# private net is 10.0.0.0/24

iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o eth0 -j SNAT --to 192.168.7.3

