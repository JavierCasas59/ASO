
#!/bin/bash


suma=0

while true; do
	echo "Introduce un número, 'Que sea el 0 para terminar': "
	read num
	
	if [ "$num" -eq 0 ]; then
		echo "La suma termina y su total es: $suma"
		break
	fi

	suma=$((suma + num))
done
