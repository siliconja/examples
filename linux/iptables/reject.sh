
iptables  -I INPUT -j REJECT --reject-with icmp-host-prohibited -d 169.254.169.254
