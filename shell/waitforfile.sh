
waitforvtyfiles()
{
    for f in "$@"; do
        count=1
        until [ -e $QUAGGA_STATE_DIR/$f ]; do
            if [ $count -eq 10 ]; then
                echo "ERROR: vty file not found: $QUAGGA_STATE_DIR/$f" >&2
                return 1
            fi
            sleep 0.1
            count=$(($count + 1))
        done
    done 
}
