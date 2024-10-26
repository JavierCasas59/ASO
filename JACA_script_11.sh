
#!/bin/bash


if [ $# -ne 2 ]; then
	echo "Error: Debes indicar dos parámetros.."
	exit 1
fi

file_origen=$1
file_destino=$2

if [ ! -f "$file_origen" ]; then
	echo "Error: El achivo de origen no existe."
	exit 1
f1


if [ -e "$file_destino" ]; then
	echo "Error: Ya existe un archivo destino, con el nombre de '$file_destino'. "
	exit 1


cp "$file_origen" "$file_destino"

if [ $? -eq 0 ]; then
	echo "Copia realizado con éxito: '$file_origen' -> '$file_destino'."
else
	echo "Error: No se puede realizar la copia."
fi
