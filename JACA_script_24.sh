#!/bin/bash

directorio=$1

cont_fich=0
cont_dir=0

if [ ! -d "$directorio" ]; then 
	echo "$directorio no es un directorio válido"
	exit 1
fi

for i in "$directorio"/*; do
	if [ -f "$i" ]; then 
		((cont_fich++))
	elif [ -d "$i" ]; then
		((cont_dir++))
	fi
done

echo "Las estadísticas del directorio $directorio"
echo "Ficheros: $cont_fich"
echo "Subdirectorios: $cont_dir"
