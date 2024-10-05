
#!/bin/bash

echo -e "\n Introduce la ruta del directorio que quieres comprimir: \n"
read ruta

echo "Pon el nombre: "
read nombre

dir="${ruta##*/}"

fecha=$(date +%Y%m%d_%H%M%S)

echo $fecha $ruta $dir $nombre

tar -czf "$nombre.tar.gz" "$ruta"

echo "Backup de $dir completado: backup_$fecha-$dir.tar.gz"
