
# redirect stdout and stderr to file
command &> output.txt
command > output.txt 2>&1

# redirect stderr to stdout

command 2>&1 | less
