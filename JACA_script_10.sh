
#!/bin/bash

echo "Escribe un número: "
read num

if [ $((num % 2)) -eq 0 ]; then
	echo "El número $num es par"
else
	echo "El número $num es impar"
fi
