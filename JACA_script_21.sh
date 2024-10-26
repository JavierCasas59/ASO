#!/bin/bash

valor=20

echo "Adivina un número: "
read num

while [[ "$num" -ne "$valor"  ]]; do

	if [[ -z $num ]]; then
		echo "No has escrito ningún número, vuelve a intentarlo: "
		read num
	fi


	if [ "$num" -lt "$valor" ]; then
		echo "El número $num es menor que el número que adivinas."
		
	elif [ "$num" -gt "$valor" ]; then 
		echo "El número $num es mayor que el número que adivinas."

	fi

	echo "Si quieres rendirte escribe '0', o inténtalo de nuevo: "
	read num

	if [ "$num" -eq 0 ]; then
		echo "Te has rendido. El número era: $valor"
		break
	fi

done


if [ "$num" -eq "$valor" ]; then
	echo "Enhorabuena!!!!"
fi
