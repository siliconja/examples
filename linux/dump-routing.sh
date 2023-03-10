#!/bin/bash
tables=$( cat /etc/iproute2/rt_tables | awk '{ print $2 }' )
filter="(unspec|reserved|inr.ruhep)"

for t in $tables; do
  if [[ $t =~ $filter ]]; then continue; fi
  echo "=== table: $t"
  ip route show table $t
  echo ""
done

echo "=== rules:"
ip rule show
