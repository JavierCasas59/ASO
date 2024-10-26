

#!/bin/bash

for i in {1..5}; do
	for ((j=1; j<=i; j++)); do
		echo -n "$i"
	done
	echo ""
done
