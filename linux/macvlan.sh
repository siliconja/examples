
sudo ip link add macvlan0 link eth0 type macvlan mode bridge
sudo ip link set macvlan0 netns ns0
sudo ip netns exec ns0 ip link set macvlan0 up
sudo ip netns exec ns0 ip addr add 172.29.6.123/21 dev macvlan0

