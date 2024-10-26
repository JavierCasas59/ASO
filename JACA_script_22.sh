#!/bin/bash

directorio=$1
contador=0

for i in "$directorio"/*; do
	if [ -f "$i" ]; then
		echo "$i es un fichero"
	elif [ -d "$i" ]; then
		echo "$i es un directorio"
	else
		echo "$i es otro tipo de entrada"
	fi
	((contador++))
done

echo "El número total de entradas procesadas es: $contador"
