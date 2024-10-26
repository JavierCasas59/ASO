
#!/bin/bash

n=$1

for i in {1..10}; do
	resultado=$((i * n))
	echo "$i x $n = $resultado"
done
