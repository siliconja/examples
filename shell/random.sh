

dd if=/dev/urandom bs=1 count=2 2>/dev/null | od -d | awk '{ print $2; exit }'
