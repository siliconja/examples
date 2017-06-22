
# open virtualbox host pipe
socat -d -d /tmp/serial.sock

# get /dev/ttys000x from above
# connect using screen
screen /ev/ttys0006 115200
