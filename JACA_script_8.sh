
#!/bin/bash

echo "Escribe el 1er número: "
read num1

echo "Escribe el 2do número: "
read num2

if [ "$num1" > "$num2" ]; then
	echo "El mayor es: $num1"
else
	echo "El mayor es: $num2"
fi

