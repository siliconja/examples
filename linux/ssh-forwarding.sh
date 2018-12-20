# -f background
# -L <local-port>:<host>:<remote-port>
# -N don't execute a command on remote
ssh -f user@10.0.0.5 -L 8080:10.0.0.6:80 -N
