
#!/bin/bash

numero=$1

for ((i=2; i*i<=numero; i++)); do
	if [ $((numero % i)) -eq 0 ]; then
		echo "$numero no es un número primo"
		exit 0
	fi
done

echo "$numero es un número primo."

