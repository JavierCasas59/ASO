
#!/bin/bash

echo "Ingresa el 1er número: "
read num1

echo "Ingresa el 2do número: "
read num2

suma=$(echo "$num1 + $num2" | bc)

resta=$(echo "$num1 - $num2" | bc)

multi=$(echo "$num1 * $num2" | bc)

div=$(echo "$num1 / $num2" | bc)

echo "La suma es: $suma"
echo "La resta es: $resta"
echo "La multiplicación es: $multi"
echo "La división es: $div"
