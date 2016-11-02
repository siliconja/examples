iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o eth0 -j TCPMSS --set-mss 1460

iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o hipbr -j TCPMSS --set-mss 1366

#iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o eth0 -j TCPMSS --clamp-mss-to-pmtu

