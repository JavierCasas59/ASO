

#!/bin/bash

#for
suma=0

for i in {1..1000}; do
    suma=$((suma + i))
done

echo "La suma con for  es: $suma"

#while
suma_while=0
i=1

while [ $i -le 1000 ]; do
	suma_while=$((suma_while + i))
	i=$((i + 1))
done

echo "La suma con while es: $suma"


#until

suma_until=0
i=1

until [ $i -gt 1000 ]; do
	suma_until=$((suma_until + i))
	i=$((i + 1))
done

echo "LA suma con untile es: $suma_until"
