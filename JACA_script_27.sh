#!/bin/bash

function existe(){
	local fichero="$1"
	if [ -e "$fichero" ]; then
		echo "El archivo '$fichero' existe."
		chmod u+x,go-x "$fichero"
	else
		echo "El archivo '$fichero' no existe"
	fi
}

existe "$1"
