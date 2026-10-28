#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Error: se debe ingresar la ruta de una carpeta."
	exit 1
fi

ruta=$1

if [ ! -d "$ruta" ]; then
	echo "Error: la carpeta no existe."
	exit 1
fi

echo "Ruta recibida: $ruta"
