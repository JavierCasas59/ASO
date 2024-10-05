
#!/bin/bash

file="listado_etc.txt"

ls -a /etc/ > "$file"

cat "$file"

echo "Cantidad de líneas"
wc -l "$file" 

echo "Cantidad de palabras"
wc -w "$file"

