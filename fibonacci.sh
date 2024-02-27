#!/bin/bash

echo "Ingrese el número n para generar la serie de Fibonacci:"
read n

# Verificar que n sea un número entero positivo
if [[ ! $n =~ ^[0-9]+$ || $n -lt 0 ]]; then
    echo "Por favor, ingrese un número entero positivo."
    exit 1
fi

# Función para calcular el término n de la serie de Fibonacci
fibonacci() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fibonacci $(( $1 - 1 ))) + $(fibonacci $(( $1 - 2 ))) ))
    fi
}

# Imprimir la serie de Fibonacci hasta n
echo -n "Serie de Fibonacci hasta $n términos: "
for (( i=0; i<n; i++ )); do
    echo -n "$(fibonacci $i) "
done

echo
