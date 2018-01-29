
# redirect stdout and stderr to file
command &> output.txt
# this works w/OpenWRT /bin/sh; output must be first
command > output.txt 2>&1

# redirect stderr to stdout

command 2>&1 | less
