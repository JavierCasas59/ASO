
#!/bin/bash


echo "Escribe tu nombre: "
read nombre

echo "Escribe tu dirección: "
read dire

echo "Escribe tu número de teléfono: "
read tele

echo $nombre $dire $tele >> lista.txt
echo "Los datos se han guardado correctamente!!!!"

echo "Introduce que quieres buscar (nombre, dire, tele)"
read buscar
grep -i "$buscar" lista.txt
